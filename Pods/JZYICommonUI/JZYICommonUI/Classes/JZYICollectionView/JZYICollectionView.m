//
//  JZYICollectionView.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYICollectionView.h"

@implementation JZYICollectionView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

+ (instancetype)setupCollectionViewWithFrame:(CGRect)frame
                             scrollDirection:(UICollectionViewScrollDirection)scrollDirection
                                    itemSize:(CGSize)itemSize
                          minimumLineSpacing:(CGFloat)minimumLineSpacing
                     minimumInteritemSpacing:(CGFloat)minimumInteritemSpacing
                                sectionInset:(UIEdgeInsets)sectionInset
                         headerReferenceSize:(CGSize)headerReferenceSize
                         footerReferenceSize:(CGSize)footerReferenceSize
{
    UICollectionViewFlowLayout *flowLayout   = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.scrollDirection               = scrollDirection;//滚动方向
    //固定大小是请勿使用代理
    flowLayout.itemSize                      = itemSize;//每个item的大小
    flowLayout.minimumLineSpacing            = minimumLineSpacing;//每行的间距
    flowLayout.minimumInteritemSpacing       = minimumInteritemSpacing;//每列的间距
    flowLayout.sectionInset                  = sectionInset;//每组距离边界的间距
    flowLayout.headerReferenceSize           = headerReferenceSize;
    flowLayout.footerReferenceSize           = footerReferenceSize;
    
    JZYICollectionView *collectionView              = [[JZYICollectionView alloc] initWithFrame:frame
                                                                           collectionViewLayout:flowLayout];
    collectionView.backgroundColor                  = [UIColor clearColor];
    collectionView.alwaysBounceVertical             = NO;
    collectionView.alwaysBounceHorizontal           = NO;
    collectionView.showsHorizontalScrollIndicator   = YES;
    collectionView.showsVerticalScrollIndicator     = YES;
    
    return collectionView;
}

@end
