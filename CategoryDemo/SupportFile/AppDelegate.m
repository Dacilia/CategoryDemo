//
//  AppDelegate.m
//  CategoryDemo
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "AppDelegate.h"
#import "MainController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UINavigationController*nav=[[UINavigationController alloc]initWithRootViewController:[MainController new]];
    [UIApplication sharedApplication].delegate.window.rootViewController=nav;
    return YES;
}





@end
