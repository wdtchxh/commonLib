//
//  MSAppSettings.h
//  EMStock
//
//  Created by ryan on 15/11/5.
//  Copyright © 2015年 flora. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MSAppSettings <NSObject>


@end


@interface MSAppSettings : NSObject <MSAppSettings>

+ (instancetype)appSettings;

@end
