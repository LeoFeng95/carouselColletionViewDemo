//
//  FLCollectionViewLayout.m
//  standard
//
//  Created by Lin YiPing on 2018/5/21.
//  Copyright © 2018年 LeoFeng. All rights reserved.
//

#import "FLCollectionViewLayout.h"

@implementation FLCollectionViewLayout

- (void)prepareLayout {
    [super prepareLayout];
    self.scrollDirection = UICollectionViewScrollDirectionVertical;
}

- (NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *rectArray = [self getCopyOfAttributes:[super layoutAttributesForElementsInRect:rect]];
    //中y线位置
    CGFloat centerY = self.collectionView.contentOffset.y + self.collectionView.bounds.size.height / 2;
    for (UICollectionViewLayoutAttributes *attributes in rectArray) {
        CGFloat distanceRatio = fabs(attributes.center.y - centerY) / self.collectionView.bounds.size.height;
//        CGFloat scale = fabs(cos(distanceRatio * M_PI/2));
       CGFloat attrCenterY = centerY + sin(distanceRatio * M_PI_2) * 250 * 0.65;
        attributes.zIndex = -ABS(attributes.center.y - centerY);
//        attributes.transform = CGAffineTransformMakeScale(scale, 1);
        attributes.center = CGPointMake(CGRectGetWidth(self.collectionView.frame) / 2, attrCenterY);
    }
    return  rectArray;
}

//是否需要及时更新
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {
    return true;
}

- (CGSize)itemSize {
    return CGSizeMake(250, 250);
}

//- (CGFloat)minimumLineSpacing {
//    return 40.f;
//}

//防止报错 先复制attributes
- (NSArray *)getCopyOfAttributes:(NSArray *)attributes {
    NSMutableArray *copyArr = [NSMutableArray new];
    for (UICollectionViewLayoutAttributes *attribute in attributes) {
        [copyArr addObject:[attribute copy]];
    }
    return copyArr;
}
@end
