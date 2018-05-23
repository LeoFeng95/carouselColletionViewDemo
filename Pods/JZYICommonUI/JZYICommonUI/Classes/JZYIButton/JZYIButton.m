//
//  JZYIButton.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/31.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYIButton.h"

@implementation JZYIButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        //防止快速点击
        [self setExclusiveTouch:YES];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //防止快速点击
        [self setExclusiveTouch:YES];
    }
    return self;
}

+ (instancetype)setupButtonWithFrame:(CGRect)frame
                                font:(UIFont *)font
                              target:(id)target
                              action:(SEL)sel
                         borderWidth:(CGFloat)borderWidth
                         borderColor:(UIColor *)borderColor
                        cornerRadius:(CGFloat)cornerRadius
{
    JZYIButton *button          = [[JZYIButton alloc] init];
    button.backgroundColor      = [UIColor clearColor];
    button.frame                = frame;
    button.titleLabel.font      = font;
    button.layer.borderColor    = borderColor.CGColor;
    button.layer.borderWidth    = borderWidth;
    button.layer.cornerRadius   = cornerRadius;
    button.layer.masksToBounds = YES;
    [button addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

@end
