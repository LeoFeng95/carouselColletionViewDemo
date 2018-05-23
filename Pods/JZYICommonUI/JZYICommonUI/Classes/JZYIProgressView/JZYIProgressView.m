//
//  JZYIProgressView.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYIProgressView.h"

@implementation JZYIProgressView

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

+ (instancetype)setupPickerViewWithFrame:(CGRect)frame
                       progressTintColor:(UIColor *)progressTintColor
                          trackTintColor:(UIColor *)trackTintColor
                           progressImage:(UIImage *)progressImage
                              trackImage:(UIImage *)trackImage
{
    JZYIProgressView *progressView = [[JZYIProgressView alloc] init];
    progressView.frame             = frame;
    progressView.progressViewStyle = UIProgressViewStyleDefault;
    progressView.progressTintColor = progressTintColor;
    progressView.trackTintColor    = trackTintColor;
    progressView.progressImage     = progressImage;
    progressView.trackImage        = trackImage;
    
    return progressView;
}

@end
