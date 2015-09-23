/*****************************************************************************
 * MLTVShowEpisodesInfoGrabber.h
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

@class MLURLConnection;

@protocol MLTVShowEpisodesInfoGrabberDelegate;

@interface MLTVShowEpisodesInfoGrabber : NSObject {
    MLURLConnection *_connection;
    NSDictionary *_results;
    NSArray *_episodesResults;
    id<MLTVShowEpisodesInfoGrabberDelegate> __weak _delegate;
    void (^_block)();
#if !HAVE_BLOCK
    id _userData;
#endif
}

@property (readwrite, weak) id<MLTVShowEpisodesInfoGrabberDelegate> delegate;
@property (readonly, strong) NSArray *episodesResults;
@property (readonly, strong) NSDictionary *results;
#if !HAVE_BLOCK
@property (readwrite, strong) id userData;
#endif

- (void)lookUpForShowID:(NSString *)id;

#if HAVE_BLOCK
- (void)lookUpForShowID:(NSString *)id andExecuteBlock:(void (^)())block;
#endif

@end

@protocol MLTVShowEpisodesInfoGrabberDelegate <NSObject>
@optional
- (void)tvShowEpisodesInfoGrabber:(MLTVShowEpisodesInfoGrabber *)grabber didFailWithError:(NSError *)error;
- (void)tvShowEpisodesInfoGrabberDidFinishGrabbing:(MLTVShowEpisodesInfoGrabber *)grabber;
@end
