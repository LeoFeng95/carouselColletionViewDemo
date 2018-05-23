//
//  JZYIButton.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/31.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JZYIButton : UIButton

+ (instancetype)setupButtonWithFrame:(CGRect)frame
                                font:(UIFont *)font
                              target:(id)target
                              action:(SEL)sel
                         borderWidth:(CGFloat)borderWidth
                         borderColor:(UIColor *)borderColor
                        cornerRadius:(CGFloat)cornerRadius;

@end
