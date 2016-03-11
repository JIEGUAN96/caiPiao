//
//  JGUINavigationController.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGUINavigationController.h"
#import "UIImage+image.h"

@interface JGUINavigationController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>
//定义个属性保存系统滑动的代理
@property (nonatomic,strong) id  popGesDelegate;

@end

@implementation JGUINavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
//    设置导航控制器的代理 为了调用下面的方法
    self.delegate=self;
//    保存滑动的代理
    self.popGesDelegate=self.interactivePopGestureRecognizer.delegate;
//    创建手势  让手势方法调用系统的策划方法
    NSLog(@"--%@",self.interactivePopGestureRecognizer);
    UIPanGestureRecognizer * pan=[[UIPanGestureRecognizer alloc]initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
//    设置代理 为了调用代理方法
    pan.delegate=self;
    [self.view addGestureRecognizer:pan];
}


//是否允许开始手势 
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
   
//    要是根控制器就不允许有开始手势ytrdfz
    return self.childViewControllers.count!=1;

}


+ (void)initialize{
    
    //获取整个应用程序下所有的导航条.
    //UINavigationBar *bar = [UINavigationBar appearance];
    
    
    //获取指定类下面的导航条
    UINavigationBar * navB=[UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[JGUINavigationController class]]];
    //设置导航条
    //设置背景(设置背影图片时, 必须得要使用)
    [navB setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics: UIBarMetricsDefault];
    
//   设置导航字体颜色

    NSMutableDictionary * dict=[NSMutableDictionary dictionary];
    
    dict[NSForegroundColorAttributeName]=[UIColor whiteColor];
    
    dict[NSFontAttributeName]=[UIFont systemFontOfSize:20];
   
    
    [navB setTitleTextAttributes:dict];
    
    
}
//当屏幕跳转的时候会调用
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
//   判断是否为根控制器
    if(self.childViewControllers.count!=0){
        viewController.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageWithOriImageName:@"NavBack"] style:0 target:self action:@selector(click)];
        self.interactivePopGestureRecognizer.delegate=nil;
      
    }



    [super pushViewController:viewController animated:animated] ;
    
}

//导航控制器的View显示完毕时调用
//viewController要显示的控制器.

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
     //判断当前显示的控制器是否为根控制器.
    if (self.childViewControllers.count==1){
      //如果是根控制器,设回手势代理
        self.interactivePopGestureRecognizer.delegate=self.popGesDelegate;
    
    }
    

}

- (void)click{

    [self popViewControllerAnimated:YES];
}

@end

