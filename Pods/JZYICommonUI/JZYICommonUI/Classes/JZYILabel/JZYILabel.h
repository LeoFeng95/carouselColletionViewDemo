//
//  JZYILabel.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JZYILabel : UILabel

@property (nonatomic, assign) CGFloat spacing ;  //!< 行距
@property (nonatomic, assign) CGFloat radius ;  //!< 圆角

+ (instancetype)setupLabelWithFrame:(CGRect)frame
                               font:(UIFont *)font
                          textColor:(UIColor *)textColor
                      textAlignment:(NSTextAlignment)textAlignment
                      numberOfLines:(NSInteger)numberOfLines
                               text:(NSString *)text;

/**
 刷新带行距文本,只限于普通文本
 */
- (void)refreshUIWithSpace;

/**
 获取带行距的高度,只限于普通文本

 @param width 宽度限制
 @return 高度
 */
- (CGFloat)getSpaceHeightOfWidth:(CGFloat)width;

#pragma mark - 富文本操作
//添加富文本
- (void)addAttributedText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor;
//添加富文本
- (void)addAttributedText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor lineSpacing:(CGFloat)lineSpacing;
//刷新富文本
- (void)refreshAttributed;

@end
