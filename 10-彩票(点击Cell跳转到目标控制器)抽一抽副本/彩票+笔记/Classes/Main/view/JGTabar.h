//
//  JGTabar.h
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JGTabar;
@protocol JGTabarDelegate <NSObject>

- (void)tabar:(JGTabar*)tabar index:(NSInteger)index;
@end
@interface JGTabar : UIView

@property (nonatomic,weak) id<JGTabarDelegate> delegate;

///** 存放的都是UITabBarItem */ 外界传入数据
@property (nonatomic,strong) NSArray * items;

@end
