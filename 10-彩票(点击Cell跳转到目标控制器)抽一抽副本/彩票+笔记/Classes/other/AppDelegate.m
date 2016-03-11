//
//  AppDelegate.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "AppDelegate.h"
#import "JGRootTool.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

/***
 项目架构采用纯代码的方式搭建:
 原因:由于控制器比较多,用StoryBoard时,很容易选成混乱,不易管理.
 
 纯代码搭建的好处:使代码的结构更加的清晰.
 方便团队开发.
 易维护.
 
 项目整体结构为:
 每个功能模块对应相应的文件夹,在每个功能模块的内部采用MVC的设置模式搭建.
 
 
 什么情况自定义类:
 1.当发现系统的无法满足自己的要求是,想在系统的功能上添加一些自己的功能, 这个时候就可以自定义类.(新建一个类, 继承系统的类,添加一些属性自己功能.)
 2.想要让代码的结构重加的清晰,便于阅读.(做到谁的事情谁管理)
 
 在这里由于添加所有的子控制器都属性是TabBarController,所以自定义了一个JGTabBarController,把所有添加子控制器的工作全部都放到,JGTabBarController,这样让AppDelegate当中结构看着更加的清晰.
 
 */


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    显示窗口
    self.window =[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
//   设置根控制器
    self.window.rootViewController=[JGRootTool rootviewcontroller];
    
    
    
//    显示窗口
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
