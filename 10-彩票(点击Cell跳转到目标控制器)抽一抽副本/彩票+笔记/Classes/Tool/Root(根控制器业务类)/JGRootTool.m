//
//  JGRootTool.m
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGRootTool.h"
#import "JGSaveTool.h"
#import "JGTaBarController.h"
#import "JGNewfeatureViewController.h"


@implementation JGRootTool

+ (UIViewController *)rootviewcontroller{
    //获取之前保存的版本号
    NSString  * oldV= [JGSaveTool objectForKey:@"NewID"];
    //获取当前软件的版本号
    NSString *curV= [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    //     判断当前版本是否与之前的版本相同
    if([oldV isEqualToString:curV]){
        //相同,跳到程序的主框架
        //2.设置窗口的根控制器
        JGTaBarController * tabVC=[[JGTaBarController alloc]init];
//        self.window.rootViewController=tabVC;
        return tabVC;
    }else{
        
        //不同,跳到新特性,保存当前的版本号
        //创建CollectionView
        JGNewfeatureViewController * tabVC=[[JGNewfeatureViewController alloc]init];
//      ta.window.rootViewController=tabVC;
        //        保存当前版本
        [JGSaveTool setObject:curV forKey:@"NewID"];
        
        return tabVC;
        
    }






}

@end
