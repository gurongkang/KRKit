//
//  KRBaseApi.m
//  KRNetworking
//
//  Created by RK on 2018/12/1.
//  Copyright © 2018年 RK. All rights reserved.
//

#import "KRBaseApi.h"
#import <AFNetworking/AFNetworking.h>

@interface  KRBaseApi ()

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

@end

@implementation KRBaseApi

+ (instancetype)api {
    id api = [[self class] new];
    return api;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _sessionManager = [AFHTTPSessionManager manager];
        _sessionManager.requestSerializer = [AFHTTPRequestSerializer serializer];
        [_sessionManager.requestSerializer setTimeoutInterval:8];
        _sessionManager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    return self;
}

- (void)httpGet:(NSString *)url
     parameters:(NSDictionary *)parameters
        success:(KRSuccess)ffSuccess
        failure:(KRFailure)ffFailure {
    
}

- (void)httpGet:(NSString *)url
     parameters:(NSDictionary *)parameters
    showLoading:(BOOL)isShow
        success:(KRSuccess)ffSuccess
        failure:(KRFailure)ffFailure {
    
}

@end
