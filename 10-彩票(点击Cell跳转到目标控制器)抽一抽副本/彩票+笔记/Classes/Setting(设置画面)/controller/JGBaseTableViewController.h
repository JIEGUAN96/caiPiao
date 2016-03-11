//
//  JGBaseTableViewController.h
//  彩票+笔记
//
//  Created by abc on 16/3/9.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import"JGSettingRowItem.h"
#import "JGSettingGroupItem.h"
#import "JGArrowItem.h"
#import "JGSwitchItem.h"

#import "JGJumpViewController.h"
#import "MBProgressHUD+XMG.h"
#import "JGNewsViewController.h"
#import "JGSettingViewCell.h"




@interface JGBaseTableViewController : UITableViewController

//用来存放组模型
@property (nonatomic,strong) NSMutableArray * groupArray;

@end
