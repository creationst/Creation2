/*****************************************************************************
 * VLCPlaylistViewController.m
 * VLC for iOS
 *****************************************************************************
 * Copyright (c) 2013-2014 VideoLAN. All rights reserved.
 * $Id$
 *
 * Authors: Felix Paul Kühne <fkuehne # videolan.org>
 *          Gleb Pinigin <gpinigin # gmail.com>
 *          Tamas Timar <ttimar.vlc # gmail.com>
 *
 * Refer to the COPYING file of the official project for license.
 *****************************************************************************/

#import "VLCPlaylistViewController.h"
#import "VLCMovieViewController.h"
#import "VLCPlaylistTableViewCell.h"
#import "VLCPlaylistCollectionViewCell.h"
#import "NSString+SupportedMedia.h"
#import "VLCBugreporter.h"
#import "C5MPAppDelegate.h"
#import "UIBarButtonItem+Theme.h"
#import <MobileVLCKit/MobileVLCKit.h>

///* prefs keys */
static NSString *kDisplayedFirstSteps = @"Did we display the first steps tutorial?";

@implementation EmptyLibraryView

- (IBAction)learnMore:(id)sender
{
//    UIViewController *firstStepsVC = [[VLCFirstStepsViewController alloc] initWithNibName:nil bundle:nil];
//    UINavigationController *navCon = [[UINavigationController alloc] initWithRootViewController:firstStepsVC];
//    navCon.modalPresentationStyle = UIModalPresentationFormSheet;
//    [navCon loadTheme];
    
//    UIViewController *firstStepsVC = [[UIViewController alloc] initWithNibName:nil bundle:nil];
//    UINavigationController *navCon = [[UINavigationController alloc] initWithRootViewController:firstStepsVC];
//    
//    [self.window.rootViewController presentViewController:navCon animated:YES completion:nil];
}

@end







@interface VLCPlaylistViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, MLMediaLibrary> {
    NSMutableArray *_foundMedia;
    VLCLibraryMode _libraryMode;
    UIBarButtonItem *_menuButton;
    UIButton *_editButton;
}

//@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) EmptyLibraryView *emptyLibraryView;

@end

@implementation VLCPlaylistViewController

+ (void)initialize
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults registerDefaults:@{kDisplayedFirstSteps : [NSNumber numberWithBool:NO]}];
}

- (void)loadView
{
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];

    _collectionView = [[UICollectionView alloc] initWithFrame:[UIScreen mainScreen].bounds collectionViewLayout:flowLayout];
    _collectionView.alwaysBounceVertical = YES;
    _collectionView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.opaque = YES;
    self.view = _collectionView;
    [_collectionView registerNib:[UINib nibWithNibName:@"VLCFuturePlaylistCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"PlaylistCell"];
    self.view.backgroundColor = [UIColor colorWithWhite:.200 alpha:1.];

    _libraryMode = VLCLibraryModeAllFiles;

//    self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    self.emptyLibraryView = [[[NSBundle mainBundle] loadNibNamed:@"VLCEmptyLibraryView" owner:self options:nil] lastObject];
//    _emptyLibraryView.emptyLibraryLongDescriptionLabel.lineBreakMode = NSLineBreakByWordWrapping;
//    _emptyLibraryView.emptyLibraryLongDescriptionLabel.numberOfLines = 0;
//    _emptyLibraryView.learnMoreButton.layer.cornerRadius = 6.;
//    _emptyLibraryView.learnMoreButton.backgroundColor = CreationMenuBlueColor;
}

#pragma mark -

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = NSLocalizedString(@"LIBRARY_ALL_FILES", @"");
    _menuButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"BUTTON_DONE", @"") style:/*UIBarButtonItemStyleBordered*/ UIBarButtonItemStylePlain target:self action:@selector(leftButtonAction:)];
    self.navigationItem.leftBarButtonItem = _menuButton;
    
    _editButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_editButton setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 10)];
    [_editButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 10, 0, 0)];
    [_editButton addTarget:self action:@selector(toggleEditing:) forControlEvents:UIControlEventTouchUpInside];
    [self setEditButton:NO];
    [self.editButtonItem setCustomView:_editButton];
    
    _emptyLibraryView.emptyLibraryLabel.text = NSLocalizedString(@"EMPTY_LIBRARY", @"");
//    _emptyLibraryView.emptyLibraryLongDescriptionLabel.text = NSLocalizedString(@"EMPTY_LIBRARY_LONG", @"");
//    [_emptyLibraryView.emptyLibraryLongDescriptionLabel sizeToFit];
//    [_emptyLibraryView.learnMoreButton setTitle:NSLocalizedString(@"BUTTON_LEARN_MORE", @"") forState:UIControlStateNormal];
//    _emptyLibraryView.view.center = CGPointMake(_emptyLibraryView.bounds.size.width / 2, _emptyLibraryView.bounds.size.height / 2);
    
    [_emptyLibraryView.computerImageView setContentMode:UIViewContentModeScaleAspectFit];
    [_emptyLibraryView.computerImageView setImage:[UIImage imageNamed:@"video_player_connect.png"]];
    
    NSString *model = [[UIDevice currentDevice] model];
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        _emptyLibraryView.descriptionLabel.text = [NSString stringWithFormat:NSLocalizedString(@"FIRST_STEPS_ITUNES_DETAILS", @""), model, model];
    else
        _emptyLibraryView.descriptionLabel.text = [[NSString stringWithFormat:NSLocalizedString(@"FIRST_STEPS_ITUNES_DETAILS", @""), model, model] stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\n"];

    [self setToolbarItems:@[[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil], [UIBarButtonItem themedDarkToolbarButtonWithTitle:NSLocalizedString(@"BUTTON_RENAME", @"") target:self andSelector:@selector(renameSelection)], [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil], [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"trash"] landscapeImagePhone:[UIImage imageNamed:@"trash"] style:/*UIBarButtonItemStyleBordered*/ UIBarButtonItemStylePlain target:self action:@selector(deleteSelection)]]];
    self.navigationController.toolbar.barStyle = UIBarStyleBlackTranslucent;
    self.navigationController.toolbar.tintColor = [UIColor whiteColor];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.collectionView.collectionViewLayout invalidateLayout];
    [self _displayEmptyLibraryViewIfNeeded];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![[defaults objectForKey:kDisplayedFirstSteps] boolValue]) {
        [self.emptyLibraryView performSelector:@selector(learnMore:) withObject:nil afterDelay:1.];
        [defaults setObject:[NSNumber numberWithBool:YES] forKey:kDisplayedFirstSteps];
        [defaults synchronize];
    }
    
//    if ([[MLMediaLibrary sharedMediaLibrary] libraryNeedsUpgrade]) {
//        self.navigationItem.rightBarButtonItem = nil;
//        self.navigationItem.leftBarButtonItem = nil;
//        self.title = @"";
////        self.emptyLibraryView.emptyLibraryLabel.text = NSLocalizedString(@"UPGRADING_LIBRARY", @"");
////        self.emptyLibraryView.emptyLibraryLongDescriptionLabel.hidden = YES;
//        [self.emptyLibraryView.activityIndicator startAnimating];
//        self.emptyLibraryView.frame = self.view.bounds;
//        [self.view addSubview:self.emptyLibraryView];
//
//        [[MLMediaLibrary sharedMediaLibrary] setDelegate: self];
//        [[MLMediaLibrary sharedMediaLibrary] performSelectorInBackground:@selector(upgradeLibrary) withObject:nil];
//        return;
//    }

    if (_foundMedia.count < 1)
        [self updateViewContents];
    [[MLMediaLibrary sharedMediaLibrary] performSelector:@selector(libraryDidAppear) withObject:nil afterDelay:1.];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [[MLMediaLibrary sharedMediaLibrary] libraryDidDisappear];
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
        [[VLCBugreporter sharedInstance] handleBugreportRequest];
}

- (void)openMediaObject:(NSManagedObject *)mediaObject
{
    [(C5MPAppDelegate*)[UIApplication sharedApplication].delegate openMediaFromManagedObject:mediaObject];
}

- (void)removeMediaObject:(id)managedObject updateDatabase:(BOOL)updateDB
{
    [self _deleteMediaObject:managedObject];

    if (updateDB) {
        [[MLMediaLibrary sharedMediaLibrary] updateMediaDatabase];
        [self updateViewContents];
    }
}

- (void)_deleteMediaObject:(MLFile *)mediaObject
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *folderLocation = [[mediaObject.url path] stringByDeletingLastPathComponent];
    NSArray *allfiles = [fileManager contentsOfDirectoryAtPath:folderLocation error:nil];
    NSString *fileName = [[[mediaObject.url path] lastPathComponent] stringByDeletingPathExtension];
    NSIndexSet *indexSet = [allfiles indexesOfObjectsPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
       return ([obj rangeOfString:fileName].location != NSNotFound);
    }];
    NSUInteger count = indexSet.count;
    NSString *additionalFilePath;
    NSUInteger currentIndex = [indexSet firstIndex];
    for (unsigned int x = 0; x < count; x++) {
        additionalFilePath = allfiles[currentIndex];
        if ([additionalFilePath isSupportedSubtitleFormat])
            [fileManager removeItemAtPath:[folderLocation stringByAppendingPathComponent:additionalFilePath] error:nil];
        currentIndex = [indexSet indexGreaterThanIndex:currentIndex];
    }
    [fileManager removeItemAtPath:[mediaObject.url path] error:nil];
}

- (void)_displayEmptyLibraryViewIfNeeded
{
    if (self.emptyLibraryView.superview)
        [self.emptyLibraryView removeFromSuperview];

    if (_foundMedia.count == 0) {
        self.emptyLibraryView.frame = self.view.bounds;
        [self.view addSubview:self.emptyLibraryView];
        self.navigationItem.rightBarButtonItem = nil;
    } else {
        self.navigationItem.rightBarButtonItem = self.editButtonItem;
    }

    [self.collectionView.collectionViewLayout invalidateLayout];
}

- (void)libraryUpgradeComplete
{
    self.title = NSLocalizedString(@"LIBRARY_ALL_FILES", @"");
    self.navigationItem.leftBarButtonItem = _menuButton;
//    self.emptyLibraryView.emptyLibraryLongDescriptionLabel.hidden = NO;
    self.emptyLibraryView.emptyLibraryLabel.text = NSLocalizedString(@"EMPTY_LIBRARY", @"");
    [self.emptyLibraryView.activityIndicator stopAnimating];
    [self.emptyLibraryView removeFromSuperview];

    [self updateViewContents];
}

- (void)libraryWasUpdated
{
    [self updateViewContents];
}

- (void)updateViewContents
{
    _foundMedia = [[NSMutableArray alloc] init];

    self.navigationItem.leftBarButtonItem = _menuButton;
    self.title = NSLocalizedString(@"LIBRARY_MUSIC", @"");

    /* add all remaining files */
    NSArray *allFiles = [MLFile allFiles];
    for (MLFile *file in allFiles) {
        if (!file.isShowEpisode && !file.isAlbumTrack)
            [_foundMedia addObject:file];
        else if (file.isShowEpisode) {
            if (file.showEpisode.show.episodes.count < 2)
                [_foundMedia addObject:file];

            /* older MediaLibraryKit versions don't send a show name in a popular
             * corner case. hence, we need to work-around here and force a reload
             * afterwards as this could lead to the 'all my shows are gone' 
             * syndrome (see #10435, #10464, #10432 et al) */
            if (file.showEpisode.show.name.length == 0) {
                file.showEpisode.show.name = NSLocalizedString(@"UNTITLED_SHOW", @"");
                [self performSelector:@selector(updateViewContents) withObject:nil afterDelay:0.1];
            }
        } else if (file.isAlbumTrack) {
            if (file.albumTrack.album.tracks.count < 2)
                [_foundMedia addObject:file];
        }
    }

    [self reloadViews];
    
}

- (void)reloadViews
{
    [self.collectionView reloadData];
    [self _displayEmptyLibraryViewIfNeeded];
}

#pragma mark - Collection View
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _foundMedia.count;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    VLCPlaylistCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlaylistCell" forIndexPath:indexPath];
    cell.mediaObject = _foundMedia[indexPath.row];
    cell.collectionView = _collectionView;

    [cell setEditing:self.editing animated:NO];

    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))
            return CGSizeMake(331., 225.);
        else
            return CGSizeMake(374., 230.);
    } else {
        if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))
            return CGSizeMake(274., 220.);
        else
            return CGSizeMake(310., 230.);
    }
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5., 5., 5., 5.);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        return 10.;
    } else {
        return 5.;
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0.;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.editing) {
        [(VLCPlaylistCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath] selectionUpdate];
        return;
    }
    NSManagedObject *selectedObject = _foundMedia[indexPath.row];
    [self openMediaObject:selectedObject];
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [(VLCPlaylistCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath] selectionUpdate];
}

#pragma mark - UI implementation
- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];

    [self setEditButton:editing];

    NSArray *visibleCells = self.collectionView.visibleCells;

    [visibleCells enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        VLCPlaylistCollectionViewCell *aCell = (VLCPlaylistCollectionViewCell*)obj;
        [aCell setEditing:editing animated:animated];
    }];
    self.collectionView.allowsMultipleSelection = editing;

    /* UIKit doesn't clear the selection automagically if we leave the editing mode
    * so we need to do so manually */
    if (!editing) {
        NSArray *selectedItems = [self.collectionView indexPathsForSelectedItems];
        NSUInteger count = selectedItems.count;
        for (NSUInteger x = 0; x < count; x++)
            [self.collectionView deselectItemAtIndexPath:selectedItems[x] animated:NO];
    }

    self.navigationController.toolbarHidden = !editing;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)aTableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (IBAction)toggleEditing:(id)sender
{
    [self setEditing:![self isEditing] animated:YES];
}

- (IBAction)leftButtonAction:(id)sender
{
    if (self.isEditing)
        [self setEditing:NO animated:YES];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)backToAllItems:(id)sender
{
    [self setLibraryMode:_libraryMode];
    [self updateViewContents];
}

- (void)_endEditingWithHardReset:(BOOL)hardReset
{
    [[MLMediaLibrary sharedMediaLibrary] updateMediaDatabase];
    if (hardReset)
        [self updateViewContents];
    else
        [self reloadViews];

    [self setEditing:NO animated:YES];
}

- (void)deleteSelection
{
    NSArray *indexPaths;
    indexPaths = [self.collectionView indexPathsForSelectedItems];

    NSUInteger count = indexPaths.count;
    NSMutableArray *objects = [[NSMutableArray alloc] initWithCapacity:count];

    for (NSUInteger x = 0; x < count; x++)
        [objects addObject:_foundMedia[[indexPaths[x] row]]];

    for (NSUInteger x = 0; x < count; x++)
        [self removeMediaObject:objects[x] updateDatabase:NO];

    [self _endEditingWithHardReset:YES];
}

- (void)renameSelection
{
    NSArray *indexPaths;
    indexPaths = [self.collectionView indexPathsForSelectedItems];

    if (indexPaths.count < 1) {
        [self _endEditingWithHardReset:NO];
        return;
    }

    NSString *itemName;
    itemName = [(VLCPlaylistCollectionViewCell *)[self.collectionView cellForItemAtIndexPath:indexPaths[0]] titleLabel].text;

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:NSLocalizedString(@"RENAME_MEDIA_TO", @""), itemName] message:nil delegate:self cancelButtonTitle:NSLocalizedString(@"BUTTON_CANCEL", @"") otherButtonTitles:NSLocalizedString(@"BUTTON_RENAME", @""), nil];
    [alert setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [[alert textFieldAtIndex:0] setText:itemName];
    [[alert textFieldAtIndex:0] setClearButtonMode:UITextFieldViewModeAlways];
    [alert show];
}

- (void)renameMediaObjectTo:(NSString*)newName
{
    NSArray *indexPaths;
    indexPaths = [self.collectionView indexPathsForSelectedItems];

    if (indexPaths.count < 1)
        return;

    id mediaObject = _foundMedia[[indexPaths[0] row]];

    if ([mediaObject isKindOfClass:[MLAlbum class]] || [mediaObject isKindOfClass:[MLShowEpisode class]] || [mediaObject isKindOfClass:[MLShow class]])
        [mediaObject setName:newName];
    else
        [mediaObject setTitle:newName];

    [self.collectionView deselectItemAtIndexPath:indexPaths[0] animated:YES];

    if (indexPaths.count > 1)
        [self renameSelection];
    else
        [self _endEditingWithHardReset:NO];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
        [self renameMediaObjectTo:[alertView textFieldAtIndex:0].text];
    else
        [self _endEditingWithHardReset:NO];
}

- (void)setEditButton:(BOOL)editing
{
    NSString *title = editing ? NSLocalizedString(@"BUTTON_CANCEL", @"") : NSLocalizedString(@"BUTTON_EDIT", @"");
    CGSize titleSize = [title sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
    UIImage *image = editing ? nil : [UIImage imageNamed:@"edit"];
    [_editButton setImage:image forState:UIControlStateNormal];
    [_editButton setTitle:title forState:UIControlStateNormal];
    [_editButton setFrame:CGRectMake(0, 0, !editing ? (image.size.width + 28 + titleSize.width) : (titleSize.width + 28), 30)];
}

#pragma mark - coin coin

- (void)setLibraryMode:(VLCLibraryMode)mode
{
    _libraryMode = mode;
    [self updateViewContents];
}

#pragma mark - autorotation

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (BOOL)shouldAutorotate
{
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) || (_foundMedia.count > 0);
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    [self.collectionView.collectionViewLayout invalidateLayout];
}

@end
