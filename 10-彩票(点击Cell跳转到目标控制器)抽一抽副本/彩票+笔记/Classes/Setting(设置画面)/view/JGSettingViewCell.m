//
//  JGSettingViewCell.m
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGSettingViewCell.h"
#import "JGSettingRowItem.h"
#import "JGArrowItem.h"

#import "JGSwitchItem.h"


@implementation JGSettingViewCell



+ (JGSettingViewCell *)cellWithTableView:(UITableView *)tableview style:(UITableViewCellStyle)style{

    static NSString * ID=@"cell";
    JGSettingViewCell * cell=[tableview dequeueReusableCellWithIdentifier:ID];
    if(cell==nil){
        cell=[[JGSettingViewCell alloc]initWithStyle:style reuseIdentifier:ID];
        
    }
    return cell;

}


-(void)setItems:(JGSettingRowItem *)items{
    _items=items;
    
    [self setdate:items];
    [self setACC:items];
  

}
//设置数据
- (void)setdate:(JGSettingRowItem*)rowItem{
    //    设置数据
    self.imageView.image=rowItem.image;
    self.textLabel.text=rowItem.title;
    self.detailTextLabel.text=rowItem.detailTitle;
    
    
    



}


- (void)setACC:(JGSettingRowItem*)rowItem{
    //    /设置辅助视图
    if ([rowItem isKindOfClass:[JGArrowItem class]]) {
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
    }else if([rowItem isKindOfClass:[JGSwitchItem class]]) {
        self.accessoryView = [[UISwitch alloc] init];
    }else {
       self.accessoryView =  nil;
    }
    


}


@end
