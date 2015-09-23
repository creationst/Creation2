/*****************************************************************************
 * MLMovieInfoGrabber.h
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


@protocol MLMovieInfoGrabberDelegate;

@interface MLMovieInfoGrabber : NSObject {
    NSURLConnection *_connection;
    NSMutableData *_data;
    NSArray *_results;
    id<MLMovieInfoGrabberDelegate> __weak _delegate;
#if HAVE_BLOCK
    void (^_block)(NSError *);
#else
    id _userData;
#endif
}

@property (readwrite, weak) id<MLMovieInfoGrabberDelegate> delegate;
#if !HAVE_BLOCK
@property (readwrite, strong) id userData;
#endif
@property (readonly, strong) NSArray *results;

- (void)lookUpForTitle:(NSString *)title;
#if HAVE_BLOCK
- (void)lookUpForTitle:(NSString *)title andExecuteBlock:(void (^)(NSError *))block;
#endif

@end

@protocol MLMovieInfoGrabberDelegate <NSObject>
@optional
- (void)movieInfoGrabber:(MLMovieInfoGrabber *)grabber didFailWithError:(NSError *)error;
- (void)movieInfoGrabberDidFinishGrabbing:(MLMovieInfoGrabber *)grabber;
@end
