//
//  KRBaseApi.h
//  KRNetworking
//
//  Created by RK on 2018/12/1.
//  Copyright © 2018年 RK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^KRSuccess)(id response);
typedef void(^KRFailure)(NSError *error);

@interface KRBaseApi : NSObject

/**
 请求host
 */
@property (nonatomic, copy) NSString *apiHost;

/**
 请求短url
 */
@property (nonatomic, copy) NSString *apiUrl;

/**
 公共参数
 */
@property (nonatomic, copy) NSDictionary<NSString *, NSString *> *publicParams;

+ (instancetype)api;

/**
 http get 请求
 
 @param url 请求
 @param parameters 参数
 @param ffSuccess 成功回调
 @param ffFailure 失败回调
 */
- (void)httpGet:(NSString *)url
     parameters:(NSDictionary *)parameters
        success:(KRSuccess)ffSuccess
        failure:(KRFailure)ffFailure;

/**
 http get 请求
 
 @param url 请求
 @param parameters 参数
 @param isShow 是否加载菊花
 @param ffSuccess 成功回调
 @param ffFailure 失败回调
 */
- (void)httpGet:(NSString *)url
     parameters:(NSDictionary *)parameters
    showLoading:(BOOL)isShow
        success:(KRSuccess)ffSuccess
        failure:(KRFailure)ffFailure;

/**
 http post 请求
 
 @param url 请求
 @param parameters 参数
 @param ffSuccess 成功回调
 @param ffFailure 失败回调
 */
- (void)httpPost:(NSString *)url
      parameters:(NSDictionary *)parameters
         success:(KRSuccess)ffSuccess
         failure:(KRFailure)ffFailure;

/**
 http post 请求
 
 @param url 请求
 @param parameters 参数
 @param isShow 是否加载菊花
 @param ffSuccess 成功回调
 @param ffFailure 失败回调
 */
- (void)httpPost:(NSString *)url
      parameters:(NSDictionary *)parameters
     showLoading:(BOOL)isShow
         success:(KRSuccess)ffSuccess
         failure:(KRFailure)ffFailure;

@end

NS_ASSUME_NONNULL_END
