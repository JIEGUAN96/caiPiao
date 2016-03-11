//
//  JGBuyViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/6.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGBuyViewController.h"
#import "JGTitleBtn.h"
@interface JGBuyViewController ()

@end

@implementation JGBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    创建按钮
    JGTitleBtn * btn=[JGTitleBtn buttonWithType: UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"YellowDownArrow"] forState: UIControlStateNormal];
    [btn setTitle:@"全部菜种" forState:UIControlStateNormal];
    [btn sizeToFit];
    
    self.navigationItem.titleView=btn;
    
    
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
