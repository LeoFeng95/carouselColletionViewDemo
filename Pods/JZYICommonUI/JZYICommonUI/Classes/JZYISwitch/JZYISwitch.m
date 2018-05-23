//
//  JZYISwitch.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYISwitch.h"

@implementation JZYISwitch

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

+ (instancetype)setupSwitchViewWithFrame:(CGRect)frame
                             onTintColor:(UIColor *)onTintColor
                               tintColor:(UIColor *)tintColor
                          thumbTintColor:(UIColor *)thumbTintColor
                                 onImage:(UIImage *)onImage
                                offImage:(UIImage *)offImage
{
    JZYISwitch *sw               = [[JZYISwitch alloc] init];
    sw.frame                     = frame;
    sw.onTintColor               = onTintColor;
    sw.tintColor                 = tintColor;
    sw.thumbTintColor            = thumbTintColor;
    sw.onImage                   = onImage;
    sw.offImage                  = offImage;
    
    return sw;
}

@end
