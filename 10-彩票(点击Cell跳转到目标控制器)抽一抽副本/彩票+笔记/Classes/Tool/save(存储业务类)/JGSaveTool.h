//
//  JGSaveTool.h
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JGSaveTool : NSObject

//根据key值从偏好设置中获取指定的值
+ (id)objectForKey:(NSString*)key;

//根据指定的key,存储指定的值
+(void)setObject:(id)object forKey:(NSString*)key;




@end
