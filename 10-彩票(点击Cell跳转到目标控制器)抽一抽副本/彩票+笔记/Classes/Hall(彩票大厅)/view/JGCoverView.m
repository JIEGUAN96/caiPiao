//
//  JGCoverView.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGCoverView.h"

@implementation JGCoverView

//创建和添加遮盖
+ (void)show{
  
    JGCoverView * coverV=[[JGCoverView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    设置为黑色,要不默认透明的你看不出来效果
    coverV.backgroundColor=[UIColor blackColor];
//    设置透明度
    coverV.alpha=0.6;
    
//    显示最外面的东西  一般都添加到主窗口上面
    [[UIApplication sharedApplication].keyWindow addSubview:coverV];
}


@end
