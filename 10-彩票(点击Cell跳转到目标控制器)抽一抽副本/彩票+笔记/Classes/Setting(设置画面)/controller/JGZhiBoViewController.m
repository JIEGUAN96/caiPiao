//
//  JGZhiBoViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/9.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGZhiBoViewController.h"

@interface JGZhiBoViewController ()

@end

@implementation JGZhiBoViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"比分直播";
    
    [self setUpgroup0];
    [self setUpgroup1];
    [self setUpgroup2];
     [self setUpgroup2];
     [self setUpgroup2];
    [self setUpgroup2];
    [self setUpgroup2];
    
    
}
-(void)setUpgroup0{
    
    JGSwitchItem* item1=[JGSwitchItem settingRowItemWithTitle:@"注意比赛" image:nil];

    //一组中有多少行
    NSArray * rowArray=@[item1];
    //创建一个组模型
    JGSettingGroupItem * groupItem=[JGSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.headerT=@"头部";
    groupItem.footT=@"尾部";
    
    [self.groupArray addObject:groupItem];
    
}
-(void)setUpgroup1{
    
    JGArrowItem* item1=[JGArrowItem settingRowItemWithTitle:@"起始时间" image:nil];
    item1.detailTitle=@"00:00";
    
    //从ios7从只要textF添加到Cell身上时, 就不须要处理键盘
    __weak  typeof(self) weakSelf = self;
    item1.mytask = ^(NSIndexPath *indexPath){
        //弹出键盘
        UITextField *textF = [[UITextField alloc] init];
        
        //获取当前点击的Cell
        UITableViewCell *cell =  [weakSelf.tableView cellForRowAtIndexPath:indexPath];
        [cell addSubview:textF];
        [textF becomeFirstResponder];
    };

    
    //一组中有多少行
    NSArray * rowArray=@[item1];
    //创建一个组模型
    JGSettingGroupItem * groupItem=[JGSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.headerT=@"头部";
    groupItem.footT=@"尾部";
    
    [self.groupArray addObject:groupItem];
    
}
-(void)setUpgroup2{
    
    JGArrowItem* item1=[JGArrowItem settingRowItemWithTitle:@"结束" image:nil];
    item1.detailTitle=@"12:00";
    
    //一组中有多少行
    NSArray * rowArray=@[item1];
    //创建一个组模型
    JGSettingGroupItem * groupItem=[JGSettingGroupItem settingItemWithRowArray:rowArray];
    groupItem.headerT=@"头部";
    groupItem.footT=@"尾部";
    
    [self.groupArray addObject:groupItem];
    
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //创建 Cell
    JGSettingViewCell * cell=[JGSettingViewCell cellWithTableView:tableView style: UITableViewCellStyleValue1];
    
    //    取出当前第几组
    JGSettingGroupItem * groupItem=self.groupArray[indexPath.section];
    //    取出每一组对应的行模型
    JGSettingRowItem * item=groupItem.rowArray[indexPath.row];
    //给Cell赋值模型
    cell.items=item;
    
    return cell;
    
}



-(void)dealloc{
    NSLog(@"%s",__func__);
}


@end
