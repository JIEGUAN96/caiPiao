//
//  JGJumpViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/8.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGJumpViewController.h"

@interface JGJumpViewController ()

@end

@implementation JGJumpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"河流之主";
    
    UIImageView * imageV=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    imageV.image=[UIImage imageNamed:@"555"];
    [self.view addSubview:imageV];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}



@end
