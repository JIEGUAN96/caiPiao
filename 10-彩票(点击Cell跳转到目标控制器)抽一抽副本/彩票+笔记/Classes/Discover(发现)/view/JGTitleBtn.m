//
//  JGTitleBtn.m
//  彩票+笔记
//
//  Created by abc on 16/3/6.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGTitleBtn.h"
#import "UIView+Frame.h"

@implementation JGTitleBtn


- (void)layoutSubviews{
    [super layoutSubviews];
//    如果文字的X值大于图片的X值
    if(self.titleLabel.x>self.imageView.x){
//        那么图片小的值给文字
        self.titleLabel.x=self.imageView.x;
        
        self.imageView.x=CGRectGetMaxX(self.titleLabel.frame);
        
    }


}

-(void)setTitle:(NSString *)title forState:(UIControlState)state{
    [super setTitle:title forState:state];
   //自适应按钮大小 
    [self sizeToFit];

}




@end
