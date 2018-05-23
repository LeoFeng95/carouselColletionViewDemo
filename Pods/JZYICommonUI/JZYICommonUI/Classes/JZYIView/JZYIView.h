//
//  JZYIView.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JZYIView : UIView

+ (instancetype)setupViewWithFrame:(CGRect)frame
                    backgroundColr:(UIColor *)backgroundColor
                       borderWidth:(CGFloat)borderWidth
                       borderColor:(UIColor *)borderColor
                      cornerRadius:(CGFloat)cornerRadius;

@end
