/*****************************************************************************
 * UINavigationController+Theme.m
 * VLC for iOS
 *****************************************************************************
 * Copyright (c) 2013 VideoLAN. All rights reserved.
 * $Id$
 *
 * Authors: Felix Paul Kühne <fkuehne # videolan.org>
 *          Romain Goyet <romain.goyet # applidium.com>
 *
 * Refer to the COPYING file of the official project for license.
 *****************************************************************************/

#import "UINavigationController+Theme.h"

#define CreationColor [UIColor colorWithRed:255.0/255.0 green:168.0/255.0 blue:22.0/255.0 alpha:1]

@implementation UINavigationController (Theme)
- (void)loadTheme
{
    UINavigationBar *navBar = self.navigationBar;
    navBar.translucent = YES;
    navBar.barTintColor = CreationColor;
    navBar.tintColor = [UIColor whiteColor];
    navBar.titleTextAttributes = @{ NSForegroundColorAttributeName : [UIColor whiteColor] };
}
@end
