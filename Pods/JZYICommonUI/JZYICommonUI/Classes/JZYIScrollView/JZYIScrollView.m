//
//  JZYIScrollView.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYIScrollView.h"

@implementation JZYIScrollView

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

+ (instancetype)setupScrollViewWithFrame:(CGRect)frame
{
    JZYIScrollView *scrollView                 = [[JZYIScrollView alloc] init];
    scrollView.backgroundColor                 = [UIColor clearColor];
    scrollView.frame                           = frame;
    scrollView.showsVerticalScrollIndicator    = YES;
    scrollView.showsHorizontalScrollIndicator  = YES;
    scrollView.pagingEnabled                   = NO;
    scrollView.bounces                         = NO;
    
    return scrollView;
}

- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
    
    if (!self.dragging) {
        [self.nextResponder touchesEnded: touches withEvent:event];
    }
    
    [super touchesEnded: touches withEvent: event];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (!self.dragging) {
        [self.nextResponder touchesBegan:touches withEvent:event];
    }
    
    [super touchesBegan:touches withEvent:event];
}

@end
