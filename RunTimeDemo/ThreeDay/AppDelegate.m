//
//  AppDelegate.m
//  RunTimeDemo
//
//  Created by YY on 16/8/27.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self configWindowAndRootVC];
    return YES;
}

/** 配置window + rootVC */
- (void)configWindowAndRootVC {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [ViewController new];    
    [self.window makeKeyAndVisible];
}

@end
