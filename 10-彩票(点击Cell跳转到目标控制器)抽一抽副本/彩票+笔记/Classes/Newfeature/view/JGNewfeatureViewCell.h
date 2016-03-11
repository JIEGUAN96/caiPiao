//
//  JGNewfeatureViewCell.h
//  彩票+笔记
//
//  Created by abc on 16/3/7.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JGNewfeatureViewCell : UICollectionViewCell

//传图片
@property (nonatomic,strong) UIImage * image;
/**
 *  设置立即体验按钮是否隐藏显示
 *
 *  @param indexPath 当前是第几个格子(item)
 *  @param count     总共有多少个格子(item)
 */
//让外界传值
- (void)setStanBtnHidden:(NSIndexPath*)indexPath count:(int)count;
@end
