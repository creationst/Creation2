/*****************************************************************************
 * VLCAppDelegate.m
 * VLC for iOS
 *****************************************************************************
 * Copyright (c) 2013 VideoLAN. All rights reserved.
 * $Id$
 *
 * Authors: Felix Paul Kühne <fkuehne # videolan.org>
 *          Gleb Pinigin <gpinigin # gmail.com>
 *          Jean-Romain Prévost <jr # 3on.fr>
 *          Luis Fernandes <zipleen # gmail.com>
 *          Carola Nitz <nitz.carola # googlemail.com>
 *
 * Refer to the COPYING file of the official project for license.
 *****************************************************************************/

#import "C5MPAppDelegate.h"
#import "NSString+SupportedMedia.h"
#import "UIDevice+SpeedCategory.h"

#import "VLCMovieViewController.h"
#import "VLCPlaylistViewController.h"
#import "UINavigationController+Theme.h"
#import "MainViewController.h"

#import <Fabric/Fabric.h>
#import <Crashlytics/Crashlytics.h>
#import "PushNotificationsManager.h"

#import "MediaLibraryKit.h"


@interface C5MPAppDelegate () {
    int _idleCounter;
    VLCMovieViewController *_movieViewController;
    VLCMovieViewController *_movieViewController2;
    VLCPlaylistViewController *_localFilesViewController;
    UINavigationController *_navCon;
    UINavigationController *_navCon2;
}

@property (nonatomic) BOOL passcodeValidated;

@end


@implementation C5MPAppDelegate
{
    MainViewController          *mainVC;
    PushNotificationsManager    *_pushManager;
    BOOL                        _appOpenedFromURL;
}


+ (void)initialize
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSNumber *skipLoopFilterDefaultValue;
    int deviceSpeedCategory = [[UIDevice currentDevice] speedCategory];
    if (deviceSpeedCategory < 3)
        skipLoopFilterDefaultValue = kVLCSettingSkipLoopFilterNonKey;
    else
        skipLoopFilterDefaultValue = kVLCSettingSkipLoopFilterNonRef;
    
    NSDictionary *appDefaults = @{kVLCSettingPasscodeKey : @"", kVLCSettingPasscodeOnKey : @(NO), kVLCSettingContinueAudioInBackgroundKey : @(NO), kVLCSettingStretchAudio : @(NO), kVLCSettingTextEncoding : kVLCSettingTextEncodingDefaultValue, kVLCSettingSkipLoopFilter : skipLoopFilterDefaultValue, kVLCSettingSubtitlesFont : kVLCSettingSubtitlesFontDefaultValue, kVLCSettingSubtitlesFontColor : kVLCSettingSubtitlesFontColorDefaultValue, kVLCSettingSubtitlesFontSize : kVLCSettingSubtitlesFontSizeDefaultValue, kVLCSettingDeinterlace : kVLCSettingDeinterlaceDefaultValue, kVLCSettingNetworkCaching : kVLCSettingNetworkCachingDefaultValue, kVLCSettingPlaybackGestures : [NSNumber numberWithBool:YES]};
    
    [defaults registerDefaults:appDefaults];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [Fabric with:@[CrashlyticsKit]];

    //enable crash preventer
    [[MLMediaLibrary sharedMediaLibrary] applicationWillStart];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    mainVC = [[MainViewController alloc] init];
    self.window.rootViewController = mainVC;
    [self.window makeKeyAndVisible];
    
    _localFilesViewController = [[VLCPlaylistViewController alloc] init];
    _navCon = [[UINavigationController alloc] initWithRootViewController:_localFilesViewController];
    [_navCon loadTheme];
    _navCon.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(openMovieFromURLWithNotification:) name:@"NotificationOpenURL" object:nil];

    // PUSH notifications
    _pushManager = [[PushNotificationsManager alloc] initWithAppLaunchOptions:launchOptions];
    
    _appOpenedFromURL = NO;
    
    return YES;
}


- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    [_pushManager appRegisteredForNotificationsWithToken:deviceToken];
}


- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
    [_pushManager handlePushNotification:userInfo];
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    if (url != nil) {
        _appOpenedFromURL = YES;
        APLog(@"%@ requested %@ to be opened", sourceApplication, url);
        //NSLog(@"%@", url.absoluteURL);
        NSString *stringURL;
        NSString *receivedUrl = [url absoluteString];
        if ([receivedUrl length] > 6) {
            NSString *c5URL = [receivedUrl substringToIndex:7];
            if ([c5URL isEqualToString:@"c5mp://"]) {
                stringURL = [receivedUrl substringFromIndex:7];
                NSLog(@"url:%@", stringURL);
                url = [NSURL fileURLWithPath:stringURL];
            }
        }
        
        if ([stringURL rangeOfString:@"DownloadedItems"].location != NSNotFound) {
            
            [self updateMediaList];
            [self openMovieFromURL:url withFlagBackToC5:YES];
            
        } else {
            
            NSString *parsedString = [url absoluteString];
            NSUInteger location = [parsedString rangeOfString:@"//"].location;
            /* Safari & al mangle vlc://http:// so fix this */
            if (location != NSNotFound && [parsedString characterAtIndex:location - 1] != 0x3a) { // :
                parsedString = [NSString stringWithFormat:@"%@://%@", [parsedString substringToIndex:location], [parsedString substringFromIndex:location+2]];
            } else {
                parsedString = [@"http://" stringByAppendingString:[receivedUrl substringFromIndex:7]];
            }
            url = [NSURL URLWithString:parsedString];
            [self openMovieFromURL:url withFlagBackToC5:YES];
        }
        return YES;
    }
    return NO;
}


- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [[MLMediaLibrary sharedMediaLibrary] applicationWillStart];
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    self.passcodeValidated = NO;
    [[MLMediaLibrary sharedMediaLibrary] applicationWillExit];
}


- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [[MLMediaLibrary sharedMediaLibrary] updateMediaDatabase];
    if (!_appOpenedFromURL) {
        [mainVC showPopUpView:YES];
    }
}


- (void)applicationDidEnterBackground:(UIApplication *)application
{
    _appOpenedFromURL = NO;
    [self hidePopOver];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    self.passcodeValidated = NO;
    [[NSUserDefaults standardUserDefaults] synchronize];
}


-(void) openMovieFromURLWithNotification:(NSNotification *) notification
{
    NSDictionary *dict = notification.userInfo;
    NSURL *url = [dict objectForKey:@"url"];
    [self openMovieFromURL:url withFlagBackToC5:NO];
}


- (void)hidePopOver
{
    if (![[NSThread currentThread] isMainThread]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self hidePopOver];
        });
        return;
    }
    
    [mainVC showPopUpView:NO];
}





#pragma mark - idle timer preventer

- (void)disableIdleTimer
{
    _idleCounter++;
    if ([UIApplication sharedApplication].idleTimerDisabled == NO)
        [UIApplication sharedApplication].idleTimerDisabled = YES;
}


- (void)activateIdleTimer
{
    _idleCounter--;
    if (_idleCounter < 1)
        [UIApplication sharedApplication].idleTimerDisabled = NO;
}






#pragma mark - playback view handling

- (void)openMediaFromManagedObject:(NSManagedObject *)mediaObject
{
    if (!_movieViewController)
        _movieViewController = [[VLCMovieViewController alloc] initWithNibName:nil bundle:nil];

    _movieViewController.mediaItem = (MLFile *)mediaObject;
    [_movieViewController setFlagOpenedFromC5:NO localFile:YES];

    [_navCon pushViewController:_movieViewController animated:YES];
}


- (void)openMovieFromURL:(NSURL *)url withFlagBackToC5:(BOOL) flagC5;
{
    _movieViewController2 = [[VLCMovieViewController alloc] initWithNibName:nil bundle:nil];
    
    [_movieViewController2 setUrl:url];
    [_movieViewController2 setFlagOpenedFromC5:flagC5 localFile:NO];
    
    _navCon2 = [[UINavigationController alloc] initWithRootViewController:_movieViewController2];
    _navCon2.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [self.window.rootViewController presentViewController:_navCon2 animated:YES completion:nil];
}


// Shows the local files (sandbox) list for playing
- (void)showPlayListView
{
    [self updateMediaList];
    [self.window.rootViewController presentViewController:_navCon animated:YES completion:nil];
}


- (void)updateMediaList
{
    NSArray *searchPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *directoryPath = searchPaths[0];
    NSArray *foundFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:directoryPath error:nil];
    NSMutableArray *filePaths = [NSMutableArray arrayWithCapacity:[foundFiles count]];
    NSURL *fileURL;
    for (NSString *fileName in foundFiles) {
        if ([fileName isSupportedMediaFormat]) {
            [filePaths addObject:[directoryPath stringByAppendingPathComponent:fileName]];
            /* exclude media files from backup (QA1719) */
            fileURL = [NSURL fileURLWithPath:[directoryPath stringByAppendingPathComponent:fileName]];
            [fileURL setResourceValue:@YES forKey:NSURLIsExcludedFromBackupKey error:nil];
        }
    }
    [[MLMediaLibrary sharedMediaLibrary] addFilePaths:filePaths];
    [_localFilesViewController updateViewContents];
}

@end
