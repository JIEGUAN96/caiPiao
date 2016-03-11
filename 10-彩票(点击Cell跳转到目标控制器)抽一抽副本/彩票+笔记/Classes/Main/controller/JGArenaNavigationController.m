
//
//  JGArenaNavigationController.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGArenaNavigationController.h"

@interface JGArenaNavigationController ()

@end

@implementation JGArenaNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)initialize{
    
    UINavigationBar * nav=[UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    
    [nav setBackgroundImage:[UIImage imageNamed:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
    
//    设置导航字体颜色
    NSMutableDictionary * dict=[NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName]=[UIColor whiteColor];
    dict[NSFontAttributeName]=[UIFont systemFontOfSize:16];
    
    [nav setTitleTextAttributes:dict];
}

@end
