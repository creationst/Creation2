//
//  UIImage.m
//  MediaLibraryKit
//
//  Created by Felix Paul Kühne on 29/05/15.
//  Copyright (c) 2015 VideoLAN. All rights reserved.
//

#import "UIImage+MLKit.h"
#import <AVFoundation/AVFoundation.h>

@implementation UIImage (MLKit)

+ (CGSize)preferredThumbnailSizeForDevice
{
    CGFloat thumbnailWidth, thumbnailHeight;
    /* optimize thumbnails for the device */
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        if ([UIScreen mainScreen].scale==2.0) {
            thumbnailWidth = 540.;
            thumbnailHeight = 405.;
        } else {
            thumbnailWidth = 272.;
            thumbnailHeight = 204.;
        }
    } else {
        if (SYSTEM_RUNS_IOS7) {
            if ([UIScreen mainScreen].scale==2.0) {
                thumbnailWidth = 480.;
                thumbnailHeight = 270.;
            } else {
                thumbnailWidth = 720.;
                thumbnailHeight = 405.;
            }
        } else {
            if ([UIScreen mainScreen].scale==2.0) {
                thumbnailWidth = 480.;
                thumbnailHeight = 270.;
            } else {
                thumbnailWidth = 240.;
                thumbnailHeight = 135.;
            }
        }
    }
    return CGSizeMake(thumbnailWidth, thumbnailHeight);
}

+ (UIImage *)scaleImage:(UIImage *)image toFitRect:(CGRect)rect
{
    CGRect destinationRect = AVMakeRectWithAspectRatioInsideRect(image.size, rect);

    CGImageRef cgImage = image.CGImage;
    size_t bitsPerComponent = CGImageGetBitsPerComponent(cgImage);
    size_t bytesPerRow = CGImageGetBytesPerRow(cgImage);
    CGColorSpaceRef colorSpaceRef = CGImageGetColorSpace(cgImage);
    CGBitmapInfo bitmapInfoRef = CGImageGetBitmapInfo(cgImage);

    CGContextRef contextRef = CGBitmapContextCreate(NULL,
                                                    destinationRect.size.width,
                                                    destinationRect.size.height,
                                                    bitsPerComponent,
                                                    bytesPerRow,
                                                    colorSpaceRef,
                                                    bitmapInfoRef);

    CGContextSetInterpolationQuality(contextRef, kCGInterpolationLow);

    CGContextDrawImage(contextRef, (CGRect){CGPointZero, destinationRect.size}, cgImage);

    return [UIImage imageWithCGImage:CGBitmapContextCreateImage(contextRef)];
}

@end
