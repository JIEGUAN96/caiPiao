//
//  JGSettingViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGSettingViewController.h"
#import "JGAwokeViewController.h"


@interface JGSettingViewController ()


@end

@implementation JGSettingViewController




- (void)viewDidLoad {
    [super viewDidLoad];
     //添加
    [self setUpgroup0];
    [self setUpgroup1];
    [self setUpGroup3];
  
}

-(void)setUpgroup0{
    
   JGArrowItem * item1=[JGArrowItem settingRowItemWithTitle:@"斗鱼" image:[UIImage imageNamed:@"more_homeshake"]];
    //要跳转的类
    item1.desClass=[JGJumpViewController class];
    


    JGSettingRowItem* item2=[JGSettingRowItem settingRowItemWithTitle:@"卡机嘛" image:[UIImage imageNamed:@"RedeemCode"]];
    JGArrowItem * item3=[JGArrowItem settingRowItemWithTitle:@"推送和提醒" image:[UIImage imageNamed:@"more_homeshake"]];
    item3.desClass=[JGAwokeViewController class];
    
    
     //一组中有多少行
    NSArray * rowArray=@[item1,item2,item3];
    //创建一个组模型
    JGSettingGroupItem * groupItem=[JGSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.headerT=@"头部";
    groupItem.footT=@"尾部";
    
    [self.groupArray addObject:groupItem];
    
}

- (void)setUpgroup1{
    JGSwitchItem * item1=[JGSwitchItem settingRowItemWithTitle:@"兑换劵" image:[UIImage imageNamed:@"more_homeshake"]];


    JGArrowItem * item2=[JGArrowItem settingRowItemWithTitle:@"检查更新" image:[UIImage imageNamed:@"RedeemCode"]];
    item2.mytask=^(NSIndexPath*indexPath){
    
     [MBProgressHUD showSuccess:@"没有新版本"];
    };
    
    NSArray * rowArray= @[item1,item2];
    JGSettingGroupItem * groupItem=[JGSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.headerT=@"头部";
    groupItem.footT=@"尾部";
    
    [self.groupArray addObject:groupItem];

}

- (void)setUpGroup3{
    
    JGArrowItem * item1=[JGArrowItem settingRowItemWithTitle:@"网易新闻" image:[UIImage imageNamed:@"MoreNetease"]];
    item1.desClass=[JGNewsViewController class];
    JGArrowItem * item2=[JGArrowItem settingRowItemWithTitle:@"娱乐八卦" image:[UIImage imageNamed:@"MoreAbout"]];
    JGSwitchItem * item3=[JGSwitchItem settingRowItemWithTitle:@"陌陌" image:[UIImage imageNamed:@"More_LotteryRecommend"]];
    
    item2.mytask=^(NSIndexPath*indexPath){
    
        [MBProgressHUD showSuccess:@"💨"];
     
    };
    NSArray * rowArray=@[item1,item2,item3];
//    创建组模型
    JGSettingGroupItem * groupItem=[JGSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.footT=@"娱乐大爆炸";
    groupItem.headerT=@"💃💃💃💃💃";
    [self.groupArray addObject:groupItem];
                                    
    
    

}


@end
