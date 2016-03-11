//
//  JGNewfeatureViewController.m
//  彩票+笔记
//
//  Created by abc on 16/3/7.
//  Copyright © 2016年 jieguan. All rights reserved.
//

#import "JGNewfeatureViewController.h"
#import "JGNewfeatureViewCell.h"
#import "UIView+Frame.h"
#define ItemCount  4
@interface JGNewfeatureViewController ()
//上一次的offset.x
@property (nonatomic ,assign) CGFloat preOffsetX;

//guide1ImageV 保存图片 为了让下面拿到设置位置
@property (nonatomic , weak) UIImageView *guide1ImageV;@end

@implementation JGNewfeatureViewController

static NSString * const reuseIdentifier = @"Cell";

-(instancetype)init{
//   创建流水布局
    UICollectionViewFlowLayout * collection=[[UICollectionViewFlowLayout alloc]init];
//    设置尺寸
    collection.itemSize=CGSizeMake ([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
//    设置每行的间距
    collection.minimumLineSpacing=0;
    collection.minimumInteritemSpacing=0;
    
//    设置滚动方向
    collection.scrollDirection=UICollectionViewScrollDirectionHorizontal;
    
    return [super initWithCollectionViewLayout:collection];
 
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerClass:[JGNewfeatureViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
//    取消弹簧
    self.collectionView.bounces=NO;
//    设置分页功能
    self.collectionView.pagingEnabled=YES;
//    添加图片
    [self setUp];
    
    }

//设置图片
- (void)setUp{
    //guideLine
    UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLine"]];
    imageV.x -= 150;
    [self.collectionView addSubview:imageV];
    
    //guide1
    UIImageView *guide1ImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guide1"]];
    guide1ImageV.x += 50;
    self.guide1ImageV = guide1ImageV;
    [self.collectionView addSubview:guide1ImageV];
    
    //guideLargeText3
    //guide1
    UIImageView *largeTextImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLargeText3"]];
    largeTextImageV.center = CGPointMake(self.view.width * 0.5, self.view.height * 0.7);
    [self.collectionView addSubview:largeTextImageV];
    
    //guideSmallText1
    UIImageView *smallTextImageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideSmallText1"]];
    smallTextImageV .center = CGPointMake(self.view.width * 0.5, self.view.height * 0.8);
    [self.collectionView addSubview:smallTextImageV];


}

//当scorllVeiw减速时调用
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView  {
//       偏移量=用当前的x值减去上一个保存的值
    CGFloat offset = scrollView.contentOffset.x - self.preOffsetX;
    NSLog(@"%f",scrollView.contentOffset.x);
//     保存当前的的值
    self.preOffsetX = scrollView.contentOffset.x;
//      当前图片的x加上两倍的偏移量 弄个动画再减回一倍 就有回弹的效果
    self.guide1ImageV.x += 2 * offset;
    
    [UIView animateWithDuration:0.5 animations:^{
        self.guide1ImageV.x -= offset;
    }];
    
    NSLog(@"--offset--%f",offset);
}



#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return ItemCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JGNewfeatureViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.backgroundColor=[UIColor redColor];
    NSLog(@"%ld",indexPath.item);
    //设置Cell的图片
    cell.image=[UIImage imageNamed:[NSString stringWithFormat:@"guide%ldBackground568h",indexPath.item+1]];
    //设置立即体验按钮是否隐藏显示
    [cell setStanBtnHidden:indexPath count:ItemCount];
    
   
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>



@end
