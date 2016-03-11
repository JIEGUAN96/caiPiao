//
//  JGSettingRowItem.m
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGSettingRowItem.h"

@implementation JGSettingRowItem


+ (instancetype)settingRowItemWithTitle:(NSString *)title image:(UIImage *)image{

    JGSettingRowItem * item=[[self alloc]init];
    item.title=title;
    item.image=image;
    

    return item;
}

@end
