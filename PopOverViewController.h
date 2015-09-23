//
//  PopOverViewController.h
//  CreationMoviePlayer
//
//  Created by Marcos Álvarez Mesa on 11/12/13.
//  Copyright (c) 2013 VideoLAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VLCPlaylistViewController.h"

@interface PopOverViewController : UIViewController

    @property (nonatomic, readonly) VLCPlaylistViewController *localFilesViewController;

@end
