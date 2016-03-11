//
//  JGArenaView.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGArenaView.h"

@implementation JGArenaView


- (void)drawRect:(CGRect)rect {
//   加载图片
    UIImage * image=[UIImage imageNamed:@"NLArenaBackground"];
    
//    绘制图片
    [image drawInRect:rect];
    
}


@end
