//
//  JGBaseTableViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/9.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGBaseTableViewController.h"

@interface JGBaseTableViewController ()

@end

@implementation JGBaseTableViewController

//创建
- (NSMutableArray *)groupArray{
    if (_groupArray==nil) {
        _groupArray=[NSMutableArray array];
    }
    return _groupArray;
    
}
//初始化为一个tableView
- (instancetype)init{
    
    return [super initWithStyle:UITableViewStyleGrouped];
}




- (void)viewDidLoad {
    [super viewDidLoad];

    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.groupArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //取出当前是第几组
    //    NSArray * rowArray=self.groupArray[section];
    //    return rowArray.count;
    JGSettingGroupItem * groupItem=self.groupArray[section];
    return groupItem.rowArray.count;
    
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //创建 Cell
    JGSettingViewCell * cell=[JGSettingViewCell cellWithTableView:tableView style:UITableViewCellStyleDefault];
    
    //    取出当前第几组
    JGSettingGroupItem * groupItem=self.groupArray[indexPath.section];
    //    取出每一组对应的行模型
    JGSettingRowItem * item=groupItem.rowArray[indexPath.row];
    //给Cell赋值模型
    cell.items=item;
    
    return cell;
    
}
//点击每行的cell时调用
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //      取出当前第几组
    JGSettingGroupItem * groupItem=self.groupArray[indexPath.section];
    //    取出每一组对应的行模型
    JGSettingRowItem * rowItem=groupItem.rowArray[indexPath.row];

    if (rowItem.mytask) {
        //            执行block
       rowItem.mytask(indexPath);
        //            执行完直接结束
        return;
        
    }
    //    判断是不是箭头类型
    if([rowItem isKindOfClass:[JGArrowItem class]]){
        //判断有没有要跳转的控制器
        JGArrowItem * arrowItem=(JGArrowItem*)rowItem;
        //        判断有没有block
      
        
        //        有没有要跳转的控制器
        if(arrowItem.desClass){
            UIViewController * vc=[[arrowItem.desClass alloc]init];
            
            [self.navigationController pushViewController:vc animated:YES];
            
            
        }
        
        
    }
    
    
    
}

//每一组的尾部标题
- (NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    
    
    //取出当前是第几组
    JGSettingGroupItem * groupItem=self.groupArray[section];
    //    返回这组的尾部信息
    return groupItem.footT;
    
}


//每一组的头部标题
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    
    //取出当前是第几组
    JGSettingGroupItem * groupItem=self.groupArray[section];
    //    返回这组的头部信息
    return groupItem.headerT;
    
}



@end
