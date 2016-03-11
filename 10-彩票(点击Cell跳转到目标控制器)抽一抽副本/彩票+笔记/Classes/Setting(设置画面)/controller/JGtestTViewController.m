//
//  JGtestTViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/9.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGtestTViewController.h"
#import "JGShareViewController.h"


@interface JGtestTViewController ()

@end

@implementation JGtestTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpgroup0];
}
-(void)setUpgroup0{
    
    JGArrowItem * item1=[JGArrowItem settingRowItemWithTitle:@"斗鱼" image:[UIImage imageNamed:@"more_homeshake"]];
    //要跳转的类
    item1.desClass=[JGJumpViewController class];
    
    
    
    JGSettingRowItem* item2=[JGSettingRowItem settingRowItemWithTitle:@"卡机嘛" image:[UIImage imageNamed:@"RedeemCode"]];
    JGArrowItem * item3=[JGArrowItem settingRowItemWithTitle:@"推送和提醒" image:[UIImage imageNamed:@"more_homeshake"]];
//    item3.desClassJGShareViewControllerer class];
    item3.desClass=[JGShareViewController class];
    
    //一组中有多少行
    NSArray * rowArray=@[item1,item2,item3];
    //创建一个组模型
    JGSettingGroupItem * groupItem=[JGSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.headerT=@"头部";
    groupItem.footT=@"尾部";
    
    [self.groupArray addObject:groupItem];
    
}

@end
