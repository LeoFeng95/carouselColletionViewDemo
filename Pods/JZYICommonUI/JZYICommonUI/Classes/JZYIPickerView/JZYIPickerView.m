//
//  JZYIPickerView.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYIPickerView.h"

@implementation JZYIPickerView

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
{
    JZYIPickerView *pickerView = [[JZYIPickerView alloc] init];
    pickerView.frame = frame;
    pickerView.showsSelectionIndicator = YES;
    pickerView.backgroundColor = [UIColor whiteColor];
    
    return pickerView;
}

@end
