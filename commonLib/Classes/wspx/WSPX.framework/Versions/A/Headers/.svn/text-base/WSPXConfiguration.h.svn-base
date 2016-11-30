//
//  WSPXConfiguration.h
//  WSPX
//
//  Created by mato on 15/9/11.
//  Copyright © 2015年 ChinaNetCenter. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WSPXConfigurationDelegate<NSObject>

@optional

/**
 *
 *  @return 返回值指示了是否已经成功启动了SDK。
 */
- (void)wspxDidStart:(BOOL)success;

@end

@interface WSPXConfiguration : NSObject

@property(nonatomic, strong) id<WSPXConfigurationDelegate> delegate;

/**
 *  设置全局黑名单，值为正则表达式，当URL匹配到blacklistHostRegexString之后则不进行导流加速。
 *  如 NSString *blacklistHostRegexString = @"baidu.com";
 *  请注意，iOS7及iOS9以上该正则黑名单是去匹配整条URL，而在iOS6/8上只能匹配到URL中的host，所以需要区分配置
 */
@property(nonatomic, copy) NSString *blacklistHostRegexString;

/**
 *  设置用户id，可用于分析日志。
 */
@property(nonatomic, copy) NSString *userID;

+ (WSPXConfiguration *)defaultConfiguration;

+ (WSPXConfiguration *)configurationWithUserID:(NSString *)userID;

@end
