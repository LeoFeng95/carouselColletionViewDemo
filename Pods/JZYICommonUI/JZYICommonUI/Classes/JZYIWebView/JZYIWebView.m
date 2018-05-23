//
//  JZYIWebView.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/31.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYIWebView.h"

@implementation JZYIWebView

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

+ (instancetype)setupWebViewWithFrame:(CGRect)frame
{
    JZYIWebView *webView     = [[JZYIWebView alloc] init];
    webView.frame            = frame;
    
    return webView;
}

@end
