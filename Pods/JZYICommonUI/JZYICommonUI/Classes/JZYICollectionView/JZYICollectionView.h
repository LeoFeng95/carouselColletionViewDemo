//
//  JZYICollectionView.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JZYICollectionView : UICollectionView

+ (instancetype)setupCollectionViewWithFrame:(CGRect)frame
                             scrollDirection:(UICollectionViewScrollDirection)scrollDirection
                                    itemSize:(CGSize)itemSize
                          minimumLineSpacing:(CGFloat)minimumLineSpacing
                     minimumInteritemSpacing:(CGFloat)minimumInteritemSpacing
                                sectionInset:(UIEdgeInsets)sectionInset
                         headerReferenceSize:(CGSize)headerReferenceSize
                         footerReferenceSize:(CGSize)footerReferenceSize;

@end
