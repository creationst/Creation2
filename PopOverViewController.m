//
//  PopOverViewController.m
//  CreationMoviePlayer
//
//  Created by Marcos Álvarez Mesa on 11/12/13.
//  Copyright (c) 2013 VideoLAN. All rights reserved.
//

#import "PopOverViewController.h"
#import "NSString+SupportedMedia.h"
#import "C5MPAppDelegate.h"
#import "AboutViewController.h"

@interface PopOverViewController () <UITextFieldDelegate>
{
    UIImageView *banner;
    
    UILabel * title;
    UILabel * text;
    UIButton * actionButton;
    UITextField *address;
    UIButton *playButton;
    UIButton *openFileButton;
    UILabel *or1;
    UILabel *or2;
    
    AboutViewController *about;
}


@end

@implementation PopOverViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        
        [[NSNotificationCenter defaultCenter]addObserver:self
                                                selector:@selector(refreshLayout)
                                                    name:UIApplicationDidBecomeActiveNotification
                                                  object:nil];
        _localFilesViewController = [[VLCPlaylistViewController alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
    {
        [self.view setFrame:CGRectMake(0, 0, 590, 640)];
        banner = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CreationBanner.png"]];
        [self.view addSubview:banner];
        
        UIButton *aboutButton = [[UIButton alloc] initWithFrame:CGRectMake(banner.frame.origin.x + banner.frame.size.width - 80, banner.frame.origin.y + banner.frame.size.height - 40, 80, 30)];
        [[aboutButton titleLabel] setFont:[UIFont systemFontOfSize:14]];
        [aboutButton setTitle:@"About" forState:UIControlStateNormal];
        [aboutButton addTarget:self action:@selector(openAbout) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:aboutButton];
        
        title = [[UILabel alloc] initWithFrame:CGRectMake(0, 310, 590, 50)];
        [title setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:35]];
        [title setTextAlignment:NSTextAlignmentCenter];
        [title setTextColor:[UIColor colorWithRed:255.0/255.0 green:168.0/255.0 blue:22.0/255.0 alpha:1]];
        
        text = [[UILabel alloc] initWithFrame:CGRectMake(30, 355, 530, 50)];
        [text setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:18]];
        [text setTextAlignment:NSTextAlignmentCenter];
        [text setNumberOfLines:1];
        [text setTextColor:[UIColor whiteColor]];

        actionButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 410, 590-100*2, 50)];
        [actionButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:25]];
        [actionButton.layer setBorderWidth:1.0f];
        [actionButton.layer setBorderColor:[UIColor whiteColor].CGColor];
        [actionButton.layer setCornerRadius:10];
        [actionButton setShowsTouchWhenHighlighted:YES];
        
        address = [[UITextField alloc] initWithFrame:CGRectMake(0, 258, 590, 40)];
        [address setText:@"http://"];
        [address setTextColor:[UIColor whiteColor]];
        [address setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5]];
        [address.layer setBorderWidth:0.0f];
        [address setDelegate:self];
        [address setTextAlignment:NSTextAlignmentCenter];
        [address setAlpha:0];
        [address setKeyboardType:UIKeyboardTypeURL];
        
        or1 = [[UILabel alloc] initWithFrame:CGRectMake(30, 460, 530, 30)];
        [or1 setTextAlignment:NSTextAlignmentCenter];
        [or1 setTextColor:[UIColor whiteColor]];
        [or1 setText:NSLocalizedString(@"OR", @"")];
        
        playButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 490, 590-100*2, 50)];
        [playButton setTitle:NSLocalizedString(@"OPEN_VIDEO_URL", @"") forState:UIControlStateNormal];
        [playButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:25]];
        [playButton.layer setBorderWidth:1.0f];
        [playButton.layer setBorderColor:[UIColor whiteColor].CGColor];
        [playButton.layer setCornerRadius:10];
        [playButton addTarget:self action:@selector(playURLpressed) forControlEvents:UIControlEventTouchUpInside];
        [playButton setShowsTouchWhenHighlighted:YES];

        or2 = [[UILabel alloc] initWithFrame:CGRectMake(30, 540, 530, 30)];
        [or2 setTextAlignment:NSTextAlignmentCenter];
        [or2 setTextColor:[UIColor whiteColor]];
        [or2 setText:NSLocalizedString(@"OR", @"")];
        
        openFileButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 570, 590-100*2, 50)];
        [openFileButton setTitle:NSLocalizedString(@"PLAY_LOCAL_FILE", @"") forState:UIControlStateNormal];
        [openFileButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:25]];
        [openFileButton.layer setBorderWidth:1.0f];
        [openFileButton.layer setBorderColor:[UIColor whiteColor].CGColor];
        [openFileButton.layer setCornerRadius:10];
        [openFileButton addTarget:self action:@selector(openFileButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [openFileButton setShowsTouchWhenHighlighted:YES];
    }
    else
    {
        [self.view setFrame:CGRectMake(0, 0, 295, 432)];
        banner = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CreationBanner.png"]];
        [banner setFrame:CGRectMake(0, 0, 295, 149)];
        [self.view addSubview:banner];
        
        title = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, 295, 30)];
        [title setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:25]];
        [title setTextAlignment:NSTextAlignmentCenter];
        [title setTextColor:CreationColor];
        
        text = [[UILabel alloc] initWithFrame:CGRectMake(20, 195, 295-20*2, 50)];
        [text setTextAlignment:NSTextAlignmentCenter];
        [text setNumberOfLines:2];
        [text setTextColor:[UIColor whiteColor]];
        [text setMinimumScaleFactor:0.3];
        [text setAdjustsFontSizeToFitWidth:YES];
        
        actionButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 250, 195, 40)];
        [actionButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:20]];
        [actionButton.layer setBorderWidth:1.0f];
        [actionButton.layer setBorderColor:[UIColor whiteColor].CGColor];
        [actionButton.layer setCornerRadius:10];
        [actionButton setShowsTouchWhenHighlighted:YES];
        
        address = [[UITextField alloc] initWithFrame:CGRectMake(0, 110, 295, 40)];
        [address setText:@"http://"];
        [address setTextColor:[UIColor whiteColor]];
        [address setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5]];
        [address.layer setBorderWidth:0.0f];
        [address setDelegate:self];
        [address setTextAlignment:NSTextAlignmentCenter];
        [address setAlpha:0];
        [address setKeyboardType:UIKeyboardTypeURL];
        
        or1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 290, 295-20*2, 24)];
        [or1 setTextAlignment:NSTextAlignmentCenter];
        [or1 setTextColor:[UIColor whiteColor]];
        [or1 setText:NSLocalizedString(@"OR", @"")];
        
        playButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 314, 195, 40)];
        [playButton setTitle:NSLocalizedString(@"OPEN_VIDEO_URL", @"") forState:UIControlStateNormal];
        [playButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:18]];
        [playButton.layer setBorderWidth:1.0f];
        [playButton.layer setBorderColor:[UIColor whiteColor].CGColor];
        [playButton.layer setCornerRadius:10];
        [playButton addTarget:self action:@selector(playURLpressed) forControlEvents:UIControlEventTouchUpInside];
        [playButton setShowsTouchWhenHighlighted:YES];

        or2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 354, 295-20*2, 24)];
        [or2 setTextAlignment:NSTextAlignmentCenter];
        [or2 setTextColor:[UIColor whiteColor]];
        [or2 setText:NSLocalizedString(@"OR", @"")];
        
        openFileButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 378, 195, 40)];
        [openFileButton setTitle:NSLocalizedString(@"PLAY_LOCAL_FILE", @"") forState:UIControlStateNormal];
        [openFileButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:18]];
        [openFileButton.layer setBorderWidth:1.0f];
        [openFileButton.layer setBorderColor:[UIColor whiteColor].CGColor];
        [openFileButton.layer setCornerRadius:10];
        [openFileButton addTarget:self action:@selector(openFileButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        [openFileButton setShowsTouchWhenHighlighted:YES];
    }

    [title setText:NSLocalizedString(@"WANT_TO_WATCH", @"")];
    
    
    [self.view addSubview:title];
    [self.view addSubview:text];
    [self.view addSubview:actionButton];
    [self.view addSubview:or1];
    [self.view addSubview:address];
    [self.view addSubview:playButton];
    [self.view addSubview:or2];
    [self.view addSubview:openFileButton];
    
    [actionButton addTarget:self action:@selector(ButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self refreshLayout];
    
    [self.view setBackgroundColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:0.5]];
    [self.view.layer setCornerRadius:10];
    

// Do any additional setup after loading the view.

    [self.view setAutoresizingMask:UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin];
}

-(void)refreshLayout{
    
    NSURL * creation5Url = [NSURL URLWithString:@"creation5://LauncheApp"];
    BOOL canOpenURL = [[UIApplication sharedApplication] canOpenURL:creation5Url];
    
    if (!canOpenURL){
        [text setText:NSLocalizedString(@"TO_PLAY_VIDEOS", @"")];
        [actionButton setTitle:NSLocalizedString(@"CREATION5_APP", @"") forState:UIControlStateNormal];
    }
    else
    {
        [text setText:NSLocalizedString(@"SELECT_ONE", @"")];
        [actionButton setTitle:@"Creation 5" forState:UIControlStateNormal];
    }
}

-(void)ButtonPressed:(id)sender{
    NSURL * creation5Url = [NSURL URLWithString:@"creation5://LauncheApp/"];
    BOOL canOpenURL = [[UIApplication sharedApplication] canOpenURL:creation5Url];
    
    if (canOpenURL){
        [[UIApplication sharedApplication] openURL:creation5Url];
    }
    else
    {
        if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
             [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/creation-5-airplay-dlna-streaming/id675817870?&mt=8"]];
        }
        else
        {
             [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/creation-5-airplay-dlna-streaming/id675813323?&mt=8"]];
        }
        
    }
}

- (void)playURLpressed
{
    if (![[NSThread currentThread] isMainThread]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self playURLpressed];
        });
        return;
    }
    
    [address setAlpha:1.0f];
    [address setReturnKeyType:UIReturnKeyGo];
    [address becomeFirstResponder];
}


-(void) openAbout
{
    NSLog(@"Abrir about");
    about = [[AboutViewController alloc] init];
    
    [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:about animated:YES completion:^{
        
    }];
    
//    [self presentViewController:about animated:YES completion:^{
//        NSLog(@"Terminado");
//    }];
}

//
// Open local files
-(void) openFileButtonPressed
{
    C5MPAppDelegate *app = (C5MPAppDelegate *)[[UIApplication sharedApplication] delegate];
    [app showPlayListView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [address setAlpha:0.0];
    [address resignFirstResponder];
}

#pragma mark - UITextField delegate methods

- (void)textFieldDidEndEditing:(UITextField *)textField
{
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    [address resignFirstResponder];
    [address setAlpha:0.0f];
    return TRUE;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    NSURL *url = [NSURL URLWithString:[textField text]];
//    NSURL *url = [NSURL URLWithString:@"http://172.30.10.51:50599/disk/DLNA-PNMKV-OP01-FLAGS01700000/O0$3$27I1474570.mkv"];
    
    if (url) {
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
        [request setHTTPMethod:@"HEAD"];
        [request setTimeoutInterval:10];
        [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue new] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
            if (connectionError == nil) {
                [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationOpenURL" object:nil userInfo:@{@"url": url}];
            } else {
                // ALERT!
                UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Creation 2 Movie Player" message:[NSString stringWithFormat:NSLocalizedString(@"CANT_OPEN_FILE", nil), url.absoluteString] preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *ok = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [alert dismissViewControllerAnimated:YES completion:nil];
                    // Show the field again
                    [self playURLpressed];
                }];
                [alert addAction:ok];
                dispatch_async(dispatch_get_main_queue(), ^{
                    [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:alert animated:YES completion:nil];
                });
            }
        }];
    }
    
    return NO;
}

@end
