//
//  EMAppModuleWSPX.m
//  Pods
//
//  Created by ryan on 15/11/6.
//
//

#import "EMAppModuleWSPX.h"
#import <WSPX/WSPX.h>
#import "EMAppSettingsWSPX.h"

@implementation EMAppModuleWSPX

- (void)moduleDidLoad:(id<EMAppSettingsWSPX>)info {
// TODO 设置网速状态
//    BOOL wspxEnabled = [info wspxEnabled];
//    BOOL wspxProxyEnabled = [info wspxProxyEnabled];
    
    [self startMAA];
}

- (void)moduleWillEnterForeground:(id)info {
    [self activeMAA];
}

- (void)moduleWillTerminate:(id)info {
    [self stopMAA];
}

- (void)startMAA
{
#ifdef kChinaNetCenterMAA
    
    BOOL enable = YES;
    if (nil == [[NSUserDefaults standardUserDefaults] objectForKey:kUserDefaultDebugCenterMAAEnable]) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:kUserDefaultDebugCenterMAAEnable];
    }
    enable = [[NSUserDefaults standardUserDefaults] boolForKey:kUserDefaultDebugCenterMAAEnable];
    
    if (enable) {
        [WSPX start];
        [WSPX setViaProxy:YES];
    }
#endif
}

- (void)activeMAA
{
#ifdef kChinaNetCenterMAA
    [WSPX activate];
#endif
}

- (void)stopMAA
{
#ifdef kChinaNetCenterMAA
    [WSPX stop];
#endif
}


@end
