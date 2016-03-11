//
//  JGAwokeViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/9.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGAwokeViewController.h"
#import "JGShareViewController.h"
#import "JGZhiBoViewController.h"



@implementation JGAwokeViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"推送和提醒";
    
    [self setUpgroup0];

}
-(void)setUpgroup0{
    
    JGArrowItem* item1=[JGArrowItem settingRowItemWithTitle:@"开奖推送" image:nil];
    //要跳转的类
    item1.desClass=[JGShareViewController class];
    
    
    
    JGArrowItem* item2=[JGArrowItem settingRowItemWithTitle:@"比分直播" image:nil];
    item2.desClass=[JGZhiBoViewController class];
   JGArrowItem* item3=[JGArrowItem settingRowItemWithTitle:@"比分直播" image:nil];
    JGArrowItem* item4=[JGArrowItem settingRowItemWithTitle:@"比分直播" image:nil];

    
    
    //一组中有多少行
    NSArray * rowArray=@[item1,item2,item3,item4];
    //创建一个组模型
    JGSettingGroupItem * groupItem=[JGSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.headerT=@"头部";
    groupItem.footT=@"尾部";
    
    [self.groupArray addObject:groupItem];
    
}



@end
