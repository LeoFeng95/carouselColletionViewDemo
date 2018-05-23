//
//  JZYIToolbar.m
//  JZYIObjectiveCManagement
//
//  Created by liyoucheng on 2018/3/15.
//  Copyright © 2018年 KAISA. All rights reserved.
//

#import "JZYIToolbar.h"

@implementation JZYIToolbar

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

+ (instancetype)setupToolbarWithFrame:(CGRect)frame
                      backgroundColor:(UIColor *)backgroundColor
{
    JZYIToolbar *toolbar = [[JZYIToolbar alloc] init];
    toolbar.barTintColor = backgroundColor;
    return toolbar;
}

@end
