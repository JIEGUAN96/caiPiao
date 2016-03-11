//
//  JGArrowItem.h
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGSettingRowItem.h"

@interface JGArrowItem : JGSettingRowItem

//当是箭头时,告诉要跳转到哪一个类当中
@property (nonatomic,assign) Class  desClass;


@end
