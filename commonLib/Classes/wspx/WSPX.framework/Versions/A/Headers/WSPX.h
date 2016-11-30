//
//  WSPX.h
//  WSPX
//
//  Created by lincz on 13-1-17.
//  Copyright (c) 2013年 Chinanetcenter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WSPXConfiguration.h"

@interface WSPX : NSObject

/**
 *  开启服务
 *  请在启动 app 后，首先调用此 API。在整个进程的生命周期中，该函数只调用一次。
 *
 *  @return 返回值指示了成功与否。
 */
+ (BOOL)start;

/**
 *  开启服务
 *  请在启动 app 后，首先调用此 API。在整个进程的生命周期中，该函数只调用一次。
 *  @param configuration 全局配置，可以为空，一旦启动完成则无法修改。
 *
 *  @return 返回值指示了成功与否。
 */
+ (BOOL)startUsingConfiguration:(WSPXConfiguration *)configuration;

/**
 *  激活服务
 *  请在 app 进入前台后首先调用此 API。
 *
 *  @return 返回值指示了成功与否。
 */
+ (BOOL)activate;

/**
 *  关闭服务
 *  请在完全退出 app 时调用此 API。在整个进程的生命周期中，该函数只调用一次。
 */
+ (void)stop;

/**
 *  （可选接口）设置是否走代理
 *
 *  @param value 是否走代理（即是否加速）
 */
+ (void)setViaProxy:(BOOL)value;

/**
 *  获取SDK版本号
 *
 *  @return
 */
+ (NSString *)sdkVersion;

@end
