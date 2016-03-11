//
//  JGArenaViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGArenaViewController.h"
#import "JGArenaView.h"
#define JGColor(r,g,b) [UIColor colorWithRed:(r)/225.0 green:(g)/225.0 blue:(b)/225.0 alpha:1]

@interface JGArenaViewController ()

@end

@implementation JGArenaViewController

//想自己自定义View 必须要用loadView  要不就会用上系统默认的view

- (void)loadView{
    
    JGArenaView * arenaV=[[JGArenaView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    设置可触摸
    arenaV.userInteractionEnabled = YES;

    self.view=arenaV;

}
- (void)viewDidLoad {
    [super viewDidLoad];
//  添加头部Segment
    UISegmentedControl *segment=[[UISegmentedControl alloc]initWithItems:@[@"篮球",@"足球"]];
//    设置背景图片
    [segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//    设置选中背景图片
    [segment setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
      //设置默认选中第一个seg
    [segment setSelectedSegmentIndex:0];
  
    
//    设置主题颜色 r0,g142,b143
//    
//    [segment setTintColor:[UIColor colorWithRed:0 green:142/225.0 blue:143/225.0 alpha:1]];
    [segment setTintColor:JGColor(0, 142, 143)];
    
    //设置标题的颜色
    NSMutableDictionary * dict=[NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName]=[UIColor whiteColor];
    [segment setTitleTextAttributes:dict forState:UIControlStateSelected];
    
    self.navigationItem.titleView=segment;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
