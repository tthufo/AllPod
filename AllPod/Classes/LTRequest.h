//
//  LTRequest.h
//
//  Created by thanhhaitran on 3/3/15.
//  Copyright (c) 2015 libreteam. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^RequestCompletion)(NSString * responseString, NSString * errorCode, NSError * error, BOOL isValidated, NSDictionary * header);

typedef void (^RequestCache)(NSString * cacheString);

typedef void (^RequestWatch)(NSDictionary * response);

@interface LTRequest : NSObject

@property(nonatomic,copy) RequestCompletion completion;

@property(nonatomic,copy) RequestCache cache;

@property(nonatomic,copy) RequestWatch watcher;

@property (nonatomic, retain) NSString * deviceToken;

@property (nonatomic, retain) NSString * address;

@property (nonatomic, readwrite) BOOL lang;


+ (LTRequest*)sharedInstance;

- (void)initRequest;

- (void)initRequestWithWatch:(RequestWatch)watcher;

- (void)didRequestInfo:(NSDictionary*)dict withCache:(RequestCache)cache andCompletion:(RequestCompletion)completion;

- (void)didInitWithUrl:(NSDictionary*)dict withCache:(RequestCache)cache andCompletion:(RequestCompletion)completion;

- (void)didRequestMultiPart:(NSDictionary*)dict withCache:(RequestCache)cache andCompletion:(RequestCompletion)completion;

- (void)registerPush;

- (void)didReceiveToken:(NSData *)deviceToken;

- (void)didFailToRegisterForRemoteNotification:(NSError *)error;

- (void)didReceiveRemoteNotification:(NSDictionary *)userInfo;

- (void)didClearBadge;

- (BOOL)isConnectionAvailable;

@end
