//
//  AppDelegate.m
//  testJSPatch
//
//  Created by 王迎博 on 16/8/23.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "AppDelegate.h"
#import <JSPatch/JSPatch.h>


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [JSPatch setupLogger:^(NSString *msg) {
        NSLog(@"%@",msg);
    }];
    
    //线上或线下模式
    [JSPatch startWithAppKey:@"3bd0d1b7d2466937"];
    [JSPatch setupDevelopment]; //开发预览模式
    
    //本地测试模式
    //[JSPatch testScriptInBundle];
    
    [JSPatch setupCallback:^(JPCallbackType type, NSDictionary *data, NSError *error) {
        switch (type) {
            case JPCallbackTypeUnknow: {
                break;
            }
            case JPCallbackTypeRunScript: {//执行脚本
                break;
            }
            case JPCallbackTypeUpdate: {//脚本有更新
                break;
            }
            case JPCallbackTypeUpdateDone: {//已拉取新脚本
                break;
            }
            case JPCallbackTypeCondition: {//条件下发
                break;
            }
            case JPCallbackTypeGray: {//灰度下发
                break;
            }
            case JPCallbackTypeUpdateFail: {//更新失败
                
                break;
            }
        }
    }];
    
    //条件下发，这里注册对应的userid等等条件，与你的条件下发对应上，这个主要是针对不同的用户，修改不同的代码
    [JSPatch setupUserData:@{
                             @"userId": @"100867",
                             @"location": @"guangdong"
                             }];
    //[JSPatch setupRSAPublicKey:nil];
    [JSPatch sync];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

@end
