//
//  JGNewfeatureViewCell.m
//  彩票+笔记
//
//  Created by abc on 16/3/7.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGNewfeatureViewCell.h"
#import "UIView+Frame.h"
#import "JGTaBarController.h"
@interface JGNewfeatureViewCell()

@property (nonatomic,weak)  UIImageView * imageV;
@property (nonatomic,weak) UIButton * passBtn;

@end

@implementation JGNewfeatureViewCell

- (UIButton *)passBtn{
    if (_passBtn==nil){
        UIButton * passBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [passBtn setImage:[UIImage imageNamed:@"guideStart"] forState:UIControlStateNormal];
//        自适应尺寸
        [passBtn sizeToFit];
//        调整位置
        passBtn.center=CGPointMake(self.width*0.5, self.height*0.8);
        _passBtn=passBtn;
        
//      监听按钮
        [passBtn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchDown];
//    添加按钮
        [self.contentView addSubview:passBtn];
    
    }
    return _passBtn;

}
- (void)click{

    JGTaBarController * tab=[[JGTaBarController alloc]init];
//    切换控制器
    
    [UIApplication  sharedApplication].keyWindow.rootViewController=tab;
    

}
-(void)setStanBtnHidden:(NSIndexPath *)indexPath count:(int)count{
   //如果是最后一个item
    if(indexPath.item==count-1){
        //立即体验按钮显示
        self.passBtn.hidden=NO;
    
    }else{
        //立即体验按钮隐藏
        self.passBtn.hidden=YES;
    }
 
 }



- (UIImageView *)imageV {
    if (_imageV==nil){
        UIImageView  * imageV=[[UIImageView alloc]init];
        imageV.frame=self.bounds;
        [self.contentView addSubview:imageV];
        _imageV=imageV;
      
    }
    return _imageV;

}
-(void)setImage:(UIImage *)image{
    _image=image;
    self.imageV.image=image;

}

@end
