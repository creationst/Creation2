//
//  PushNotificationsManager.h
//  CreationCommonLibrary
//
//  Created by Daniel Muñoz on 06/05/15.
//  Copyright (c) 2015 Creation TEAM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PushNotificationsManager : NSObject


- (instancetype)initWithAppLaunchOptions:(NSDictionary *)launchOptions;
- (void)appRegisteredForNotificationsWithToken:(NSData *)token;
- (void)handlePushNotification:(NSDictionary *)info;


@end
