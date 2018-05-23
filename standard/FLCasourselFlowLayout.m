//
//  FLCasourselFlowLayout.m
//  standard
//
//  Created by Lin YiPing on 2018/5/23.
//  Copyright © 2018年 LeoFeng. All rights reserved.
//

#import "FLCasourselFlowLayout.h"

#define VW self.collectionView.bounds.size.width//视图宽度
#define IW self.itemSize.width//item的宽度
@implementation FLCasourselFlowLayout


- (void)prepareLayout {
    [super prepareLayout];
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.collectionView.contentInset = UIEdgeInsetsMake(0, 40, 0, 40);

}

//可见部分的布局rect为可见部分的rect
- (nullable NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
//    NSArray *superArray = [super layoutAttributesForElementsInRect:rect];
    NSInteger cellCount = [self.collectionView numberOfItemsInSection:0];
    //可见部分中线的位置
    CGFloat centerX = self.collectionView.contentOffset.x + VW / 2;
    //求出当前中线所在位置的item 索引值
    NSInteger index =  centerX / IW;
    //中间为一个item 左右两边要对称 那么左右两边最大的布局数量就是(self.visiableCount - 1) / 2
    NSInteger count = (self.visiableCount - 1) / 2;
    //左边布局的数量(左边默认从0下标开始布局当中线滑动下一个item的时候)
    NSInteger leftIndex = MAX(0, (index - count));
    //总的布局数量
     NSMutableArray<UICollectionViewLayoutAttributes *> *array = [NSMutableArray array];
    //右边的布局数量
    NSInteger rightIndex = MIN((cellCount - 1), (index + count));
    for (NSInteger i = leftIndex; i <= rightIndex; i++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:0];
        UICollectionViewLayoutAttributes *atts = [self layoutAttributesForItemAtIndexPath:indexPath];
        [array addObject:atts];
    }
    //返回可见部分的indexPath的布局属性
    return array;
}


- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {
    //获取cell的布局属性
    UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    attributes.size = self.itemSize;
    //屏幕中线X轴的位置
    CGFloat centerX = self.collectionView.contentOffset.x + VW / 2;
    //item的centerX的位置（第几个item + itemW / 2）
    CGFloat itemCenterX = IW * indexPath.row + IW / 2;
    //距离中线的位置
    CGFloat distanceX = itemCenterX - centerX;
    //距离中线越近zIndex越大越在上面(刚好重合的时候zIndex是最大的也就是最中间的)
    attributes.zIndex = -ABS(distanceX);
    //距离系数比
    CGFloat distanceRatio = distanceX / (IW * 2);
    //缩放系数比 (1 - ABS(distanceX) / (IW * 6.0) * cos(distanceRatio * M_PI_4))  fabs(cos(distanceRatio * M_PI / 4))
    CGFloat scaleRatio = fabs(cos(distanceRatio * M_PI / 4));
    CGFloat ratio = ABS(distanceX) / (IW * 6.0);
    CGFloat scaleRatio1 = (1 - ratio * cos(distanceRatio * M_PI_4));
    NSLog(@"scaleRatio = %f scaleRatio1 = %f",scaleRatio, scaleRatio);
    //缩放
    attributes.transform = CGAffineTransformMakeScale(scaleRatio1, scaleRatio1);
    CGFloat atttibutesCenterY = centerX + sin(distanceRatio * M_PI_2) * IW * 0.9;
    attributes.center = CGPointMake(atttibutesCenterY, (CGRectGetHeight(self.collectionView.frame))/ 2);
    return attributes;
}

- (CGSize)collectionViewContentSize {
    NSInteger cellCount = [self.collectionView numberOfItemsInSection:0];
    return CGSizeMake(cellCount * IW, 0);
}


- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity {
    //proposedContentOffset.x+ VW / 2 - IW / 2 距离中线便宜的位置 roundf四舍五入
    CGFloat index = roundf((proposedContentOffset.x+ VW / 2 - IW / 2) / IW);
    proposedContentOffset.x = IW * index + IW / 2 - VW / 2;
    return proposedContentOffset;
}


- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return YES;
}



- (CGSize)itemSize {
//    int randomH = 100 + arc4random() % (200 - 100 + 1);
    return CGSizeMake(200, 200);
}
@end
