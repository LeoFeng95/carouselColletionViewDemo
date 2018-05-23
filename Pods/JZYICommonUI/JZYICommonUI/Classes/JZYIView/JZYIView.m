//
//  JZYIView.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYIView.h"

@implementation JZYIView

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

+ (instancetype)setupViewWithFrame:(CGRect)frame
                    backgroundColr:(UIColor *)backgroundColor
                       borderWidth:(CGFloat)borderWidth
                       borderColor:(UIColor *)borderColor
                      cornerRadius:(CGFloat)cornerRadius 
{
    JZYIView *view           = [[JZYIView alloc] init];
    view.frame               = frame;
    view.backgroundColor     = backgroundColor;
    view.layer.borderWidth   = borderWidth;
    view.layer.borderColor   = borderColor.CGColor;
    view.layer.cornerRadius  = cornerRadius;

    return view;
}



@end
