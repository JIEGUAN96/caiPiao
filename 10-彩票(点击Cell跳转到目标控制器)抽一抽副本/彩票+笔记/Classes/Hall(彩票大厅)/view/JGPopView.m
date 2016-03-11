//
//  JGPopView.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGPopView.h"

@implementation JGPopView


- (IBAction)clickBtn:(id)sender {
//    实行代理方法通知代理
    if([_delegate respondsToSelector:@selector(popViewClickBtn:)]){
//    实行代理方法
        [_delegate popViewClickBtn:self];
    
    }
    
}

- (void)hiddenInpoint:(CGPoint)point completion:(void (^)())completion{
  [UIView animateWithDuration:0.5 animations:^{
//      设置隐藏点为外面定义的point点
      self.center=point;
//      设置缩放.这里不要设置为(0.0)要不直接消失 设置为很小很小肉眼看不到 达成效果
      self.transform=CGAffineTransformMakeScale(0.000001, 0.00000);
      
  }completion:^(BOOL finished) {
      //执行外界传入的代码  这里用bolck函数是为了解耦合性.要不要在这拿到JGCoverView
      completion();
//      移除图片
      [self removeFromSuperview];
  }];
  
 
}

+ (instancetype)showInpoint:(CGPoint)point{
//    加载xib
  JGPopView * popV=  [[NSBundle mainBundle]loadNibNamed:@"JGPopView" owner:nil options:nil][0];
//    让显示点为point
    popV.center=point;
    
//    显示到窗口上面
    [[UIApplication sharedApplication].keyWindow addSubview:popV];
//    返回popV;
    return popV;
 
}
@end
