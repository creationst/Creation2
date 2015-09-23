//  PushNotificationsManager.m
//  CreationCommonLibrary
//
//  Created by Daniel Muñoz on 06/05/2015.
//  Copyright (c) 2015 Creation TEAM. All rights reserved.
//

#import "PushNotificationsManager.h"
#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <sys/utsname.h>


@implementation PushNotificationsManager
{
    UIApplication   *_application;
}


- (instancetype)initWithAppLaunchOptions:(NSDictionary *)launchOptions
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    [self setParseAppID];

    _application = [UIApplication sharedApplication];
    
    if (_application.applicationState != UIApplicationStateBackground) {
        BOOL preBackgroundPush = ![_application respondsToSelector:@selector(backgroundRefreshStatus)];
        BOOL oldPushHandlerOnly = ![self respondsToSelector:@selector(application:didReceiveRemoteNotification:fetchCompletionHandler:)];
        BOOL noPushPayload = ![launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];
        if (preBackgroundPush || oldPushHandlerOnly || noPushPayload) {
            [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
        }
    }
    
    [self registerAppForNotifications]; // This ask for user authorization
    
    return self;
}


- (void)appRegisteredForNotificationsWithToken:(NSData *)token
{
    PFInstallation *inst = [PFInstallation currentInstallation];
    [inst setDeviceTokenFromData:token];
    // User language
    NSString *lang = [[NSLocale preferredLanguages] objectAtIndex:0];
    [inst setObject:lang forKey:@"lang"];
    // App Real Version
    NSString *appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    [inst setObject:appVersion forKey:@"appRealVersion"];
    // Device model & name
    [inst setObject:[self getDeviceModel] forKey:@"deviceModel"];
    [inst setObject:[[UIDevice currentDevice] name] forKey:@"deviceName"];
    
    [inst saveInBackgroundWithBlock:^(BOOL success, NSError *error) {
        if (success) {
            NSLog(@"App (%@) registered for remote PUSH notifications (lang=%@)", appVersion, lang);
        } else {
            NSLog(@"Error registering app (%@) for remote PUSH notifications (lang=%@)!!!", appVersion, lang);
        }
    }];
}


- (void)handlePushNotification:(NSDictionary *)info
{
    if (_application.applicationState == UIApplicationStateInactive) {
        [PFAnalytics trackAppOpenedWithRemoteNotificationPayload:info];
    }
    
    [PFPush handlePush:info];
}






#pragma mark - PRIVATE methods

- (void)registerAppForNotifications
{
    [_application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound categories:nil]];
    
    [_application registerForRemoteNotifications];
}


- (void)setParseAppID
{
#if DEBUG
    NSString *appID = @"BTgVANCtitf3CQCYFkzOm8BVRCodvi3uG35eeOvr";
    NSString *clientID = @"Qyb62Utv67M2XIHl4FKow3UgEx06tn8tN4Ab3aCW";
#else
    NSString *appID = @"BTgVANCtitf3CQCYFkzOm8BVRCodvi3uG35eeOvr";
    NSString *clientID = @"Qyb62Utv67M2XIHl4FKow3UgEx06tn8tN4Ab3aCW";
#endif
    
    [Parse setApplicationId:appID clientKey:clientID];
    
    NSLog(@"Device registered for C2 (%@)", DEBUG? @"Debug" : @"Production");
}


- (NSString*)getDeviceModel
{
    struct utsname systemInfo;
    
    uname(&systemInfo);
    
    NSString* code = [NSString stringWithCString:systemInfo.machine
                                        encoding:NSUTF8StringEncoding];
    
    static NSDictionary* deviceNamesByCode = nil;
    
    if (!deviceNamesByCode) {
        
        deviceNamesByCode = @{@"i386"      :@"Simulator",
                              @"iPod1,1"   :@"iPod Touch 1st Gen",  // (Original)
                              @"iPod2,1"   :@"iPod Touch 2nd Gen",  // (Second Generation)
                              @"iPod3,1"   :@"iPod Touch 3rd Gen",  // (Third Generation)
                              @"iPod4,1"   :@"iPod Touch 4th Gen",  // (Fourth Generation)
                              @"iPod5,1"   :@"iPod Touch 5th Gen",  // (Fiveth Generation)
                              
                              @"iPhone1,1" :@"iPhone",              // (Original)
                              @"iPhone1,2" :@"iPhone 3G",           // (3G)
                              @"iPhone2,1" :@"iPhone 3GS",          // (3GS)
                              @"iPhone3,1" :@"iPhone 4",            //
                              @"iPhone3,2" :@"iPhone 4",            //
                              @"iPhone3,3" :@"iPhone 4",            //
                              @"iPhone4,1" :@"iPhone 4S",           //
                              @"iPhone5,1" :@"iPhone 5",            // (model A1428, AT&T/Canada)
                              @"iPhone5,2" :@"iPhone 5",            // (model A1429, everything else)
                              @"iPhone5,3" :@"iPhone 5c",           // (model A1456, A1532 | GSM)
                              @"iPhone5,4" :@"iPhone 5c",           // (model A1507, A1516, A1526 (China), A1529 | Global)
                              @"iPhone6,1" :@"iPhone 5s",           // (model A1433, A1533 | GSM)
                              @"iPhone6,2" :@"iPhone 5s",           // (model A1457, A1518, A1528 (China), A1530 | Global)
                              @"iPhone7,1" :@"iPhone 6+",           //
                              @"iPhone7,2" :@"iPhone 6",            //
                              
                              @"iPad1,1"   :@"iPad",                // (Original)
                              @"iPad2,1"   :@"iPad 2",              //
                              @"iPad2,2"   :@"iPad 2",              //
                              @"iPad2,3"   :@"iPad 2",              //
                              @"iPad2,4"   :@"iPad 2",              //
                              @"iPad2,5"   :@"iPad Mini",           // (Original)
                              @"iPad2,6"   :@"iPad Mini",           // (Original)
                              @"iPad2,7"   :@"iPad Mini",           // (Original)
                              @"iPad3,1"   :@"iPad 3rd Gen",        // (3rd Generation)
                              @"iPad3,2"   :@"iPad 3rd Gen",        // (3rd Generation)
                              @"iPad3,3"   :@"iPad 3rd Gen",        // (3rd Generation)
                              @"iPad3,4"   :@"iPad 4th Gen",        // (4th Generation)
                              @"iPad3,5"   :@"iPad 4th Gen",        // (4th Generation)
                              @"iPad3,6"   :@"iPad 4th Gen",        // (4th Generation)
                              @"iPad4,1"   :@"iPad Air WiFi",       // 5th Generation iPad (iPad Air) - Wifi
                              @"iPad4,2"   :@"iPad Air Cellular",   // 5th Generation iPad (iPad Air) - Cellular
                              @"iPad4,3"   :@"iPad Air",            // 5th Generation iPad (iPad Air)
                              @"iPad4,4"   :@"iPad Mini 2nd Gen",   // (2nd Generation iPad Mini - Wifi)
                              @"iPad4,5"   :@"iPad Mini 2nd Gen",   // (2nd Generation iPad Mini - Cellular)
                              @"iPad4,6"   :@"iPad Mini 2nd Gen",   // 2nd Generation iPad Mini
                              @"iPad4,7"   :@"iPad Mini 3rd Gen",   // 3rd Generation iPad Mini
                              @"iPad4,8"   :@"iPad Mini 3rd Gen",   // 3rd Generation iPad Mini
                              @"iPad4,9"   :@"iPad Mini 3rd Gen",   // 3rd Generation iPad Mini
                              @"iPad5,3"   :@"iPad Air 2",          // iPad Air 2
                              @"iPad5,4"   :@"iPad Air 2",          // iPad Air 2
                              };
    }
    
    NSString* deviceName = [deviceNamesByCode objectForKey:code];
    
    if (deviceName) {
        deviceName = [NSString stringWithFormat:@"%@ (%@)", deviceName, code];
    } else {
        deviceName = code;
    }
    
    return deviceName;
}


@end
