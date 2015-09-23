/*****************************************************************************
 * MLTVShowInfoGrabber.h
 * Lunettes
 *****************************************************************************
 * Copyright (C) 2010 Pierre d'Herbemont
 * Copyright (C) 2010-2013 VLC authors and VideoLAN
 * $Id$
 *
 * Authors: Pierre d'Herbemont <pdherbemont # videolan.org>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/

@protocol MLTVShowInfoGrabberDelegate;

@interface MLTVShowInfoGrabber : NSObject {
    NSURLConnection *_connection;
    NSMutableData *_data;
    NSArray *_results;
    void (^_block)();
    id<MLTVShowInfoGrabberDelegate> __weak _delegate;
#if !HAVE_BLOCK
    id _userData;
#endif
}

@property (readwrite, weak) id<MLTVShowInfoGrabberDelegate> delegate;
@property (readonly, strong) NSArray *results;
#if !HAVE_BLOCK
@property (readwrite, strong) id userData;
#endif

- (void)lookUpForTitle:(NSString *)title;

#if HAVE_BLOCK
- (void)lookUpForTitle:(NSString *)title andExecuteBlock:(void (^)())block;
#endif


#if HAVE_BLOCK
+ (void)fetchServerTimeAndExecuteBlock:(void (^)(NSNumber *))block;
+ (void)fetchUpdatesSinceServerTime:(NSNumber *)serverTime andExecuteBlock:(void (^)(NSArray *))block;
#else
- (void)fetchUpdatesSinceServerTime:(NSNumber *)serverTime;
- (void)fetchServerTime;
+ (NSNumber *)serverTime;
#endif
@end


@protocol MLTVShowInfoGrabberDelegate <NSObject>
@required
- (void)tvShowInfoGrabber:(MLTVShowInfoGrabber *)grabber didFailWithError:(NSError *)error;
- (void)tvShowInfoGrabberDidFinishGrabbing:(MLTVShowInfoGrabber *)grabber;
- (void)tvShowInfoGrabberDidFetchServerTime:(MLTVShowInfoGrabber *)grabber;
- (void)tvShowInfoGrabber:(MLTVShowInfoGrabber *)grabber didFetchUpdates:(NSArray *)updates;
@end
