//
//  JGMyLotteryViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/6.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGMyLotteryViewController.h"
#import "UIImage+image.h"
#import "JGSettingViewController.h"
#import "JGtestTViewController.h"

@interface JGMyLotteryViewController ()
@property (weak, nonatomic) IBOutlet UIButton *redBtn;

@end

@implementation JGMyLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
      //取出背景图片
    UIImage * image=self.redBtn.currentBackgroundImage;
    //拉伸图片的中间区域
    UIImage * strecImage=[image stretchableImageWithLeftCapWidth:image.size.width*0.5 topCapHeight:image.size.height*0.5];
    [self.redBtn setBackgroundImage:strecImage forState: UIControlStateNormal];
    
      //设置左侧按钮
    UIButton * btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"FBMM_Barbutton"] forState:UIControlStateNormal];
    [btn setTitle:@"客服" forState:UIControlStateNormal];
//    自适应尺寸
    [btn sizeToFit];
//    监听按钮
    [btn addTarget:self action:@selector(clickLeftBtn) forControlEvents:UIControlEventTouchDown ];
    
//    添加 左边按钮
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:btn];
    
//    设置右侧按钮
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageWithOriImageName:@"Mylottery_config"] style:0 target:self action:@selector(clickRightBtn)];
    
    
}
- (void)clickLeftBtn{
   
    NSLog(@"左左左");

}

- (void)clickRightBtn{
    JGSettingViewController * set=[[JGSettingViewController alloc]init];
//    JGtestTViewController * set=[[JGtestTViewController alloc]init];
    
    
    [self.navigationController pushViewController:set animated:YES];
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
