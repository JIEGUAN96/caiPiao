//
//  JGSettingViewCell.h
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JGSettingRowItem;

@interface JGSettingViewCell : UITableViewCell

+ (JGSettingViewCell *)cellWithTableView:(UITableView *)tableview style:(UITableViewCellStyle)style;

//传进模型
@property (nonatomic,strong) JGSettingRowItem* items;

@end
