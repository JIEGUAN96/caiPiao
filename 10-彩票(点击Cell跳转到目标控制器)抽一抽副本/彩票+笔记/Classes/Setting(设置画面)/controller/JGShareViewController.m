//
//  JGShareViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/9.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGShareViewController.h"

#import"JGSettingRowItem.h"
#import "JGSettingGroupItem.h"
#import "JGArrowItem.h"
#import "JGSwitchItem.h"

#import "JGSettingViewCell.h"



@implementation JGShareViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"分享赛事";
    
    [self setUpgroup0];
    
}
-(void)setUpgroup0{
    
    JGSwitchItem* item1=[JGSwitchItem settingRowItemWithTitle:@"双色球" image:nil];
    item1.detailTitle=@"周日撒旦撒旦阿迪";
    //要跳转的类
//    item1.desClass=[JGShareViewController class];
    
    
    
    JGSwitchItem* item2=[JGSwitchItem settingRowItemWithTitle:@"3D足球" image:nil];
    JGSwitchItem* item3=[JGSwitchItem settingRowItemWithTitle:@"快乐十分" image:nil];
    JGSwitchItem* item4=[JGSwitchItem settingRowItemWithTitle:@"比分直播" image:nil];
    
    
    
    //一组中有多少行
    NSArray * rowArray=@[item1,item2,item3,item4];
    //创建一个组模型
    JGSettingGroupItem * groupItem=[JGSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.headerT=@"头部";
    groupItem.footT=@"尾部";
    
    [self.groupArray addObject:groupItem];
    
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //创建 Cell
    JGSettingViewCell * cell=[JGSettingViewCell cellWithTableView:tableView style: UITableViewCellStyleSubtitle];
    
    //    取出当前第几组
    JGSettingGroupItem * groupItem=self.groupArray[indexPath.section];
    //    取出每一组对应的行模型
    JGSettingRowItem * item=groupItem.rowArray[indexPath.row];
    //给Cell赋值模型
    cell.items=item;
    
    return cell;
    
}




@end
