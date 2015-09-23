//
//  UIImage.h
//  MediaLibraryKit
//
//  Created by Felix Paul Kühne on 29/05/15.
//  Copyright (c) 2015 VideoLAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (MLKit)

+ (CGSize)preferredThumbnailSizeForDevice;
+ (UIImage *)scaleImage:(UIImage *)image toFitRect:(CGRect)rect;

@end
