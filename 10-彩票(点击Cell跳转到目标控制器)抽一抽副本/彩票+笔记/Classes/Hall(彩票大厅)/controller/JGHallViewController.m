//
//  JGHallViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/5.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGHallViewController.h"
#import "UIImage+image.h"
#import "JGCoverView.h"
#import "JGPopView.h"

@interface JGHallViewController ()<JGPopViewDelegate>

@end

@implementation JGHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageWithOriImageName:@"CS50_activity_image"] style:0 target:self action:@selector(Click)];
}

- (void)Click{
//    显示遮盖
    [JGCoverView show];
//    设置显示图片的位置
//    拿到popV
   JGPopView * popV=[JGPopView showInpoint:self.view.center];
//    设置代理
    popV.delegate=self;
    


}
#pragma mark - JGPopViewDelegate

//实现代理方法
- (void)popViewClickBtn:(JGPopView *)popView{
    
//    决定隐藏到哪个位置
    [popView hiddenInpoint:CGPointMake(20, 20) completion:^{
        
//        遍历显示到窗口的View
        for (UIView * view in [UIApplication sharedApplication].keyWindow.subviews){
//          判断是不是遮盖JGCoverView 要是是就移除
            if([view isKindOfClass:[JGCoverView class]]){
//               移除遮盖
                [view removeFromSuperview];
            }
           
        
        }
    }];

  
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
