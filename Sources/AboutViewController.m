//
//  AboutViewController.m
//  CreationMoviePlayer
//
//  Created by Marcos Álvarez Mesa on 9/7/16.
//  Copyright © 2016 VideoLAN. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self setTitle:@"About"];
    
    UIImageView *icon = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-25, 40, 50, 50)];
    [icon setImage:[UIImage imageNamed:@"C2_icon"]];
    [self.view addSubview:icon];
    
    UITextView *text = [[UITextView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-100)];
    [text setEditable:NO];
     
     NSString *text1 = @"C2 is based on VLC for iOS and distributed under EULA license \n\n"
     
     "You can download it as a git repository on https://github.com/creationst/Creation2.git \n\n"
     
     "C2 makes use of the following libraries:\n\n"
     
     "VLC for iOS: http://www.videolan.org/vlc/download-ios.html : \n"
     
     "Bi-licensed under the Mozilla Public License Version 2 as well as the GNU General Public License Version 2 or later. You can modify or redistribute its sources under the conditions of these licenses. Note that additional terms apply for trademarks owned by the VideoLAN association. \n\n"
     
     "MobileVLCKit \n Copyright 2007-2016 Pierre d´Herbemont, Felix Paul Kühne, Faustino E. Osuna, et al. - LGPLv2.1 or later \n\n"
     
     "MediaLibraryKit \n Copyright 2010-2015 Pierre d´Herbemont, Felix Paul Kühne, Tobias Conradi, Carola Nitz, et al. - LGPLv2.1 or later\n\n"
     
     "OBSlider \n Copyrigth 2011 Ole Begemann and contributors - MIT License"
     
     "LGPLv2.1: https://opensource.org/licenses/LGPL-2.1 \n\n"
     
     "Mozilla Public License Version 2: https://opensource.org/licenses/MPL-2.0 \n\n"
     
     "GNU General Public License Version 2: https://opensource.org/licenses/GPL-2.0 \n\n"
     
     "LICENSED APPLICATION END USER LICENSE AGREEMENT (EULA): Bi-licensed under MPLv2 and LGPLv2.1";
    
    NSString* filePathMPL = [[NSBundle mainBundle] pathForResource:@"mpl" ofType:@"txt"];
    NSString *textMPL = [NSString stringWithContentsOfFile:filePathMPL encoding:NSUTF8StringEncoding error:nil];
    
    NSString* filePathLGPL = [[NSBundle mainBundle] pathForResource:@"lgpl" ofType:@"txt"];
    NSString *textLGPL = [NSString stringWithContentsOfFile:filePathLGPL encoding:NSUTF8StringEncoding error:nil];
    
    NSString* filePathMIT = [[NSBundle mainBundle] pathForResource:@"mit" ofType:@"txt"];
    NSString *textMIT = [NSString stringWithContentsOfFile:filePathMIT encoding:NSUTF8StringEncoding error:nil];
    
    [text setText: [NSString stringWithFormat:@"%@\n\n\n\n\n\n%@\n\n\n\n\n\n%@\n\n\n\n\n\n%@", text1, textMPL, textLGPL, textMIT]];
    
    [self.view addSubview:text];
    
    UIButton *close =[[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-50, 0, 100, 30)];
    [close setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [close setTitle:@"Close" forState:UIControlStateNormal];
    [close addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:close];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}


- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void) close
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}



@end
