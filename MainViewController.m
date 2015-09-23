//
//  MainViewController.m
//  CreationMoviePlayer
//
//  Created by Marcos Álvarez Mesa on 11/12/13.
//  Copyright (c) 2013 VideoLAN. All rights reserved.
//

#import "MainViewController.h"
#import "PopOverViewController.h"

#define IS_IPHONE5 (([[UIScreen mainScreen] bounds].size.height-568)?NO:YES)
#define iPhone4height               960/2
#define iPhone5height               1136/2


@interface MainViewController ()
{
    UIImageView         *bgView;
    PopOverViewController *popOver;
}

@end





@implementation MainViewController


-(id)init
{
    if (self = [super init]) {
        
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view.
    switch ([[UIDevice currentDevice] userInterfaceIdiom]) {
        case UIUserInterfaceIdiomPad:
            [self.view setFrame:CGRectMake(0, 0, 1024, 768)];
            bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ipad_bg.png"]];
            break;
            
        case UIUserInterfaceIdiomPhone:
//            if(IS_IPHONE5){
                [self.view setFrame:CGRectMake(0, 0, 320, 480)];
                bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_iphone_5.png"]];
//            }
//            else{
//                [self.view setFrame:CGRectMake(0, 0, 320, 568)];
//                bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_iphone4Dark.png"]];
//            }
            break;
            
        default:
            break;
    }
    
    [bgView setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth];
    
    [bgView setClipsToBounds:YES];

    [self.view addSubview:bgView];
    
    [self.view setClipsToBounds:YES];
    
    popOver = [[PopOverViewController alloc] init];
//    [popOver.view setHidden:!popUpViewShown];
    [self.view addSubview:popOver.view];
    [popOver.view setCenter:CGPointMake(self.view.frame.size.width/2 , self.view.frame.size.height/2)];
    
    [self prefersStatusBarHidden];
    [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
    //[popOver presentPopoverFromRect:CGRectMake(0, 0, 590, 590) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:true];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)showPopUpView:(BOOL)show
{
//    if (show != popUpViewShown) {
//        popUpViewShown = show;
//    }
//    
    [popOver.view setHidden:!show];
}


//-(BOOL)shouldAutorotate
//{
//    //    [[UIDevice currentDevice] orientation];
//    
//    BOOL isPortrait = UIDeviceOrientationIsPortrait(self.interfaceOrientation);
//    
//    [[UIDevice currentDevice] userInterfaceIdiom];
//    
//    switch ([[UIDevice currentDevice] userInterfaceIdiom]) {
//        case UIUserInterfaceIdiomPad:
//            if (isPortrait)
//                [bgView setFrame:CGRectMake(0, 0, 768, 1024)];
//            else
//                [bgView setFrame:CGRectMake(0, 0, 1024, 768)];
//            
//            break;
//            
//        case UIUserInterfaceIdiomPhone:
////            if (isPortrait)
////            {
////                if (IS_IPHONE5)
////                    [self.view setFrame:CGRectMake(0, 0, 320, iPhone5height)];
////                else
////                    [self.view setFrame:CGRectMake(0, 0, iPhone4height, 320)];
////            }
////            else
////            {
////                if (IS_IPHONE5)
////                    [self.view setFrame:CGRectMake(0, 0, 320, iPhone5height)];
////                else
////                    [self.view setFrame:CGRectMake(0, 0, iPhone4height, 320)];
////            }
//            
//            return NO;
//            break;
//
//            
//        default:
//            break;
//    }
//    
//    return YES;
//}


//-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//    return UIInterfaceOrientationLandscapeRight;
//}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone && orientation == UIInterfaceOrientationPortrait)
    {
        return YES;
    }
    
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    if([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
        return  UIInterfaceOrientationMaskPortrait;
    
    return UIInterfaceOrientationMaskAll;
}



-(BOOL)prefersStatusBarHidden
{
    return true;
}

@end
