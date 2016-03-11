//
//  JGTabar.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGTabar.h"
#import "JGTbBarbtn.h"
@interface JGTabar()
//上一个选中的按钮
@property (nonatomic,weak) UIButton * selectedBtn;
@end

@implementation JGTabar

-(void)setItems:(NSArray *)items{
    items=items;
    
    for (int i=0;i<items.count;i++){
//        创建按钮
        JGTbBarbtn * btn=[JGTbBarbtn buttonWithType: UIButtonTypeCustom];
        btn.tag=i;
        //取出UITabBarItem模型
        UITabBarItem *item=items[i];
//        设置按钮
        [btn setBackgroundImage:item.image forState:UIControlStateNormal];
//        设置选中状态按钮
        [btn setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
//        添加按钮
        [self addSubview:btn];
        
        //    监听按钮点击
        [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchDown];
        
//        默认选中第一个按钮
        if(i==0){
         
            [self clickBtn:btn];
        }
  
    }
}



- (void)clickBtn:(UIButton*)btn{
    
//    1 取消上一个选中按钮
    self.selectedBtn.selected=NO;
//    2.让当前的按钮设为选中状态
    btn.selected=YES;
//    3把当前按钮赋值于上一个选中按钮
    self.selectedBtn=btn;
    
    //调用代理方法
    //判断代理有没有实现对应的代理方法
    if ([_delegate respondsToSelector:@selector(tabar:index:)]) {
        //调用代理方法
        [_delegate tabar:self index:btn.tag];
    }

}


//在layoutSubviews中设置按钮的位置

- (void)layoutSubviews{
    [super layoutSubviews];
     //取出每一个按钮, 设置尺寸位置.
    int count=(int)self.subviews.count;
    CGFloat H=self.bounds.size.height;
    CGFloat W=self.bounds.size.width/count;
    CGFloat X=0;
    CGFloat Y=0;
//    取出所有按钮
    for (int i=0;i<count;i++){
        X= i * W;
//        取出每一个按钮
        UIButton * btn=self.subviews[i];
        btn.frame=CGRectMake(X, Y, W, H);
        
        
    
    }



}

@end
