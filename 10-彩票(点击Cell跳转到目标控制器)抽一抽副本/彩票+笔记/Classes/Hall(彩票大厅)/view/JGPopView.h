//
//  JGPopView.h
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JGPopView;
@protocol JGPopViewDelegate <NSObject>

- (void)popViewClickBtn:(JGPopView*)popView;
@end
@interface JGPopView : UIView

//提供接口 让外面设置显示到哪个点
//设定返回值,让外界可以拿到JGPopView 设置其代理
+ (instancetype)showInpoint:(CGPoint)point;

//提供接口 让外面设置隐藏到哪个点

- (void)hiddenInpoint :(CGPoint)point completion:(void(^)())completion;

//设置代理属性
@property (nonatomic,weak) id<JGPopViewDelegate>  delegate;


@end
