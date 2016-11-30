//
//  EMAppSettingsWSPX.h
//  Pods
//
//  Created by ryan on 15/11/6.
//
//

#import <Foundation/Foundation.h>
#import <MSAppModuleKit/MSAppSettings.h>

@protocol EMAppSettingsWSPX <MSAppSettings>

@property (nonatomic, assign) BOOL wspxEnabled;
@property (nonatomic, assign) BOOL wspxProxyEnabled;

@end
