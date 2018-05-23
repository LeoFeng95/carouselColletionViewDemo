//
//  ViewController.m
//  standard
//
//  Created by Lin YiPing on 2018/3/26.
//  Copyright © 2018年 LeoFeng. All rights reserved.

#import "ViewController.h"
#import <Masonry.h>
#import <JZYICommonUI/JZYIBasicUI.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "FLCollectionViewLayout.h"
#import "FLCasourselFlowLayout.h"


static NSString *identifier = @"Cell";

@interface ViewController ()
<UICollectionViewDelegate,
UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation ViewController {
    UILabel *_l;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 250, 250)];
//    lab.backgroundColor = [UIColor redColor];
//    lab.center = self.view.center;
//    [self.view addSubview:lab];
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [UIView animateWithDuration:3 animations:^{
//            CATransform3D trans = CATransform3DMakeRotation(M_PI, 0, 1, 0);
//            lab.layer.transform = trans;
//
//        }];
//
//    });
    [self p_buildUI];
}

- (void)p_buildUI {
//    FLCollectionViewLayout *layout = [[FLCollectionViewLayout alloc] init];
    
    FLCasourselFlowLayout *layout = [[FLCasourselFlowLayout alloc] init];
    layout.visiableCount = 3;
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:identifier];
    [self.view addSubview:self.collectionView];

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.contentView.layer.cornerRadius = 5;
    cell.contentView.layer.masksToBounds = YES;
//    cell.contentView.backgroundColor = [UIColor colorWithRed: green:<#(CGFloat)#> blue:<#(CGFloat)#> alpha:<#(CGFloat)#>];
    cell.contentView.backgroundColor = [self arndomColor];
    return cell;
}

- (UIColor *)arndomColor

{
    
    CGFloat red = arc4random_uniform(256)/ 255.0;
    
    CGFloat green = arc4random_uniform(256)/ 255.0;
    
    CGFloat blue = arc4random_uniform(256)/ 255.0;
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    return color;
    
}

@end
