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
    [text setText:@"C2 is based on VLC for iOS and distributed under EULA license \n\n"
     
     "You can download it as a git repository on https://github.com/creationst/Creation2.git \n\n"
     
     "C2 makes use of the following libraries:\n\n"
     
     "VLC for iOS: http://www.videolan.org/vlc/download-ios.html : \n"
     
     "Bi-licensed under the Mozilla Public License Version 2 as well as the GNU General Public License Version 2 or later. You can modify or redistribute its sources under the conditions of these licenses. Note that additional terms apply for trademarks owned by the VideoLAN association. \n\n"
     
     "MobileVLCKit \n Copyright 2007-2016 Pierre d´Herbemont, Felix Paul Kühne, Faustino E. Osuna, et al. - LGPLv2.1 or later \n\n"
     
     "MediaLibraryKit \n Copyright 2010-2015 Pierre d´Herbemont, Felix Paul Kühne, Tobias Conradi, Carola Nitz, et al. - LGPLv2.1 or later\n\n"
     
     "LGPLv2.1: https://opensource.org/licenses/LGPL-2.1 \n\n"
     
     "Mozilla Public License Version 2: https://opensource.org/licenses/MPL-2.0 \n\n"
     
     "GNU General Public License Version 2: https://opensource.org/licenses/GPL-2.0 \n\n"
     
     "LICENSED APPLICATION END USER LICENSE AGREEMENT (EULA): Is under MIT License: \n\n"
     
     "Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\n"
     
     "The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\n"
     
     "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."];
    
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
