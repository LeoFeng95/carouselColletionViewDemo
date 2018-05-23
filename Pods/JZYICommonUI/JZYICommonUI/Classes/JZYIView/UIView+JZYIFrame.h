//
//  UIView+JZYIFrame.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JZYIFrame)

@property (nonatomic, assign) CGPoint cOrigin; //!< 位置
@property (nonatomic, assign) CGSize cSize; //!< 大小
@property (nonatomic, assign) CGFloat height; //!< 高度
@property (nonatomic, assign) CGFloat width; //!< 宽度
@property (nonatomic, assign) CGFloat top; //!< 上
@property (nonatomic, assign) CGFloat left; //!< 左
@property (nonatomic, assign) CGFloat bottom; //!< 下
@property (nonatomic, assign) CGFloat right; //!< 右

@end
