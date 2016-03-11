//
//  JGSettingGroupItem.m
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGSettingGroupItem.h"

@implementation JGSettingGroupItem


+ (instancetype)settingItemWithRowArray:(NSArray *)array{

    JGSettingGroupItem * groupItem=[[self alloc]init];
    
    groupItem.rowArray=array;
    return groupItem;

}
@end
