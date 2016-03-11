//
//  JGSettingRowItem.h
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIImage+image.h"
//定义枚举
typedef enum : NSUInteger {
    JGSettingRowtypeA,
    JGSettingRowtypeSW
    
} JGSettingRowType;

@interface JGSettingRowItem : NSObject

//图标
 @property (nonatomic,strong) UIImage * image;

//文字
@property (nonatomic,strong) NSString * title;

//子标题
@property (nonatomic , strong) NSString *detailTitle;
//执行一段代码
@property (nonatomic,copy) void(^mytask)(NSIndexPath*indexPath);

//快速创建模型

+(instancetype)settingRowItemWithTitle:(NSString*)title image:(UIImage*)image;
//当前cell右辅助视图的类型
//@property (nonatomic,assign) JGSettingRowType  rowType;




@end
