/*****************************************************************************
 * MLAlbumTrack.m
 *****************************************************************************
 * Copyright (C) 2010 Pierre d'Herbemont
 * Copyright (C) 2013-2015 Felix Paul Kühne
 * $Id$
 *
 * Authors: Pierre d'Herbemont <pdherbemont # videolan.org>
 *          Felix Paul Kühne <fkuehne # videolan.org>
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

#import "MLMediaLibrary.h"
#import "MLAlbumTrack.h"
#import "MLAlbum.h"

@interface MLAlbumTrack ()
@property (nonatomic, strong) NSNumber *primitiveUnread;
@end

@implementation MLAlbumTrack

+ (NSArray *)allTracks
{
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSManagedObjectContext *moc = [[MLMediaLibrary sharedMediaLibrary] managedObjectContext];
    if (!moc || moc.persistentStoreCoordinator == nil)
        return [NSArray array];

    NSEntityDescription *entity = [NSEntityDescription entityForName:@"AlbumTrack" inManagedObjectContext:moc];
    [request setEntity:entity];

    NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:@"title" ascending:NO];
    [request setSortDescriptors:@[descriptor]];
    [request setPredicate:[NSPredicate predicateWithFormat:@"files.@count > 0"]];

    NSArray *tracks = [moc executeFetchRequest:request error:nil];

    return tracks;
}

+ (MLAlbumTrack *)trackWithAlbum:(MLAlbum *)album trackNumber:(NSNumber *)trackNumber createIfNeeded:(BOOL)createIfNeeded
{
    return [MLAlbumTrack trackWithAlbum:album
                            trackNumber:trackNumber
                              trackName:@""
                         createIfNeeded:createIfNeeded];
}

+ (MLAlbumTrack *)trackWithAlbum:(MLAlbum *)album trackNumber:(NSNumber *)trackNumber trackName:(NSString *)trackName createIfNeeded:(BOOL)createIfNeeded
{
    if (!album)
        return nil;

    NSSet *tracks = [album tracks];
    MLAlbumTrack *track = nil;
    if (trackNumber) {
        for (MLAlbumTrack *trackIter in tracks) {
            if ([trackIter.trackNumber intValue] == [trackNumber intValue]) {
                track = trackIter;
                break;
            } else if ([trackIter.title isEqualToString:trackName]) {
                track = trackIter;
                break;
            }
        }
    }
    if (!track && createIfNeeded) {
        track = [[MLMediaLibrary sharedMediaLibrary] createObjectForEntity:@"AlbumTrack"];
        if (trackNumber.integerValue == 0)
            trackNumber = @(tracks.count + 1);
        track.trackNumber = trackNumber;
        [album addTrack:track];
    }
    return track;
}

+ (MLAlbumTrack *)trackWithAlbumName:(NSString *)albumName trackNumber:(NSNumber *)trackNumber createIfNeeded:(BOOL)createIfNeeded wasCreated:(BOOL *)wasCreated
{
    return [MLAlbumTrack trackWithAlbumName:albumName
                                trackNumber:trackNumber
                                  trackName:@""
                             createIfNeeded:createIfNeeded
                                 wasCreated:wasCreated];
}

+ (MLAlbumTrack *)trackWithAlbumName:(NSString *)albumName trackNumber:(NSNumber *)trackNumber trackName:(NSString *)trackName createIfNeeded:(BOOL)createIfNeeded wasCreated:(BOOL *)wasCreated
{
    MLAlbum *album = [MLAlbum albumWithName:albumName];
    *wasCreated = NO;
    if (!album && createIfNeeded) {
        *wasCreated = YES;
        album = [[MLMediaLibrary sharedMediaLibrary] createObjectForEntity:@"Album"];
        album.name = albumName ? albumName : @"";
    } else if (!album && !createIfNeeded)
        return nil;

    return [MLAlbumTrack trackWithAlbum:album trackNumber:trackNumber trackName:trackName createIfNeeded:createIfNeeded];
}

@dynamic primitiveUnread;
@dynamic unread;
- (void)setUnread:(NSNumber *)unread
{
    [self willChangeValueForKey:@"unread"];
    [self setPrimitiveUnread:unread];
    [self didChangeValueForKey:@"unread"];
    NSManagedObjectContext *moc = [[MLMediaLibrary sharedMediaLibrary] managedObjectContext];
    if (moc) {
        [moc refreshObject:[self album] mergeChanges:YES];
        [moc refreshObject:self mergeChanges:YES];
    }
}

@dynamic artist;
@dynamic genre;
@dynamic title;
@dynamic trackNumber;
@dynamic album;
@dynamic files;
@dynamic containsArtwork;
@end
