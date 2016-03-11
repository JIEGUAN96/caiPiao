//
//  JGSettingGroupItem.h
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JGSettingGroupItem : NSObject

//一组中有多少行
@property (nonatomic,strong) NSArray * rowArray;
//头部标题
@property (nonatomic,strong) NSString * headerT;
//尾部标题
@property (nonatomic,strong) NSString * footT;
//快速创建一个组模型
+ (instancetype)settingItemWithRowArray:(NSArray*)array;

@end
