/*****************************************************************************
 * VLCAppDelegate.h
 * VLC for iOS
 *****************************************************************************
 * Copyright (c) 2013 VideoLAN. All rights reserved.
 * $Id$
 *
 * Authors: Felix Paul Kühne <fkuehne # videolan.org>
 *          Gleb Pinigin <gpinigin # gmail.com>
 *          Jean-Romain Prévost <jr # 3on.fr>
 *          Carola Nitz <nitz.carola # googlemail.com>
 *
 * Refer to the COPYING file of the official project for license.
 *****************************************************************************/

#define CreationColor [UIColor colorWithRed:255.0/255.0 green:168.0/255.0 blue:22.0/255.0 alpha:1]

@interface C5MPAppDelegate : UIResponder <UIApplicationDelegate>

- (void)disableIdleTimer;
- (void)activateIdleTimer;

- (void)openMediaFromManagedObject:(NSManagedObject *)file;
- (void)showPlayListView;

@property (nonatomic, strong) UIWindow *window;


@end
