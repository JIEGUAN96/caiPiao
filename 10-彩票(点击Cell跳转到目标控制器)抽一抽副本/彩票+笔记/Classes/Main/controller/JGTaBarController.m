//
//  JGTaBarController.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGTaBarController.h"
#import "JGArenaViewController.h"
#import "JGDiscoverViewController.h"
#import "JGHallViewController.h"
#import "JGhistoryViewController.h"
#import "JGMyLotteryViewController.h"

#import "JGTabar.h"
#import "JGUINavigationController.h"
#import "JGArenaNavigationController.h"


@interface JGTaBarController ()<JGTabarDelegate>

@property (nonatomic,strong) NSMutableArray * items;

@end

@implementation JGTaBarController

- (NSMutableArray *)items{
    if(_items==nil){
    
        _items=[NSMutableArray array];
    
    }
    return _items;
}


- (void)viewDidLoad {
    [super viewDidLoad];
//    添加所有控件
    [self addAllchlidContorller];
//    添加tabBar
    [self setUpTabar];
}
//添加自定义tabar

- (void)setUpTabar{
//     移除系统的tabar
//    [self.tabBar removeFromSuperview];
//    创建自己的tabar
    JGTabar * tab=[[JGTabar alloc]init];
    
    tab.delegate=self;
//    尺寸大小等于系统tabBar的尺寸
    tab.frame=self.tabBar.bounds;
    
    tab.items=self.items;
//   将自定义tab 添加到系统的tabBar上
    [self.tabBar addSubview:tab];

}
//在View即将显示的时候系统调用这个方法
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    for (UIView * view in self.tabBar.subviews){
        if(![view isKindOfClass:[JGTabar class]]){
//            如果不是JGTabar 就把它从tabar中移除
            
            [view removeFromSuperview];
        
        }
     
    }
}

- (void)tabar:(JGTabar *)tabar index:(NSInteger)index{

    self.selectedIndex=index;


}

//添加所有子控件
- (void)addAllchlidContorller{

        
        //tabBar当中设置的图片不能超过44
        
        //购彩大厅
//    创建导航控制器
   
        JGHallViewController *hallVC = [[JGHallViewController alloc] init];
        hallVC.view.backgroundColor = [UIColor redColor];
    [self addOneViewContorller:hallVC image:[UIImage imageNamed:@"TabBar_Arena_new"] selectedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:@"购彩大厅"];
    
        //竞技场
        JGArenaViewController *arenaVC = [[JGArenaViewController alloc] init];
        arenaVC.view.backgroundColor = [UIColor blueColor];
    [self addOneViewContorller:arenaVC image:[UIImage imageNamed:@"TabBar_Arena_new"] selectedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:@"竞技场"];
    
        //发现

    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"JGDiscoverViewController" bundle:nil];
    
    JGDiscoverViewController *disVC = [sb instantiateInitialViewController];
    
//        JGDiscoverViewController *disVC = [[JGDiscoverViewController alloc] init];
//        disVC.view.backgroundColor = [UIColor greenColor];
   [self addOneViewContorller:disVC image:[UIImage imageNamed:@"TabBar_Arena_new"] selectedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:@"发现"];
    
        //开奖信息
        JGhistoryViewController *hisVC = [[JGhistoryViewController alloc] init];
        hisVC.view.backgroundColor = [UIColor purpleColor];
    [self addOneViewContorller:hisVC image:[UIImage imageNamed:@"TabBar_Arena_new"] selectedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:@"开奖信息"];
        //我的彩票
        JGMyLotteryViewController *myLottery = [[JGMyLotteryViewController alloc] init];
   [self addOneViewContorller:myLottery image:[UIImage imageNamed:@"TabBar_Arena_new"] selectedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:@"我的彩票"];
    

}

- (void)addOneViewContorller:(UIViewController*)vc image:(UIImage*)image selectedImage:(UIImage*)selectedImage title :(NSString*)title{

        vc.tabBarItem.image=image;
    vc.tabBarItem.selectedImage=selectedImage;
    vc.title=title;
//    保存信息到数组
    [self.items addObject:vc.tabBarItem];

   //判断当前传入的控制器是否为竞技场控制器
    if ([vc isKindOfClass:[JGArenaViewController class] ]){
    
        JGArenaNavigationController * nav=[[JGArenaNavigationController alloc]initWithRootViewController:vc];
        
        [self addChildViewController:nav];
    }else{
    
        JGUINavigationController * nav=[[JGUINavigationController alloc]initWithRootViewController:vc];
        
        [self addChildViewController:nav];
    
    }
    




}

//添加一个子控制器




@end
