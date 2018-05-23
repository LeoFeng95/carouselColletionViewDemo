//
//  JZYIDatePicker.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYIDatePicker.h"

@implementation JZYIDatePicker

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

+ (instancetype)setupDatePickerWithFrame:(CGRect)frame
                                    date:(NSDate *)date
{
    JZYIDatePicker *datePicker       = [[JZYIDatePicker alloc] init];
    datePicker.frame                 = frame;
    datePicker.timeZone              = [NSTimeZone localTimeZone];
    datePicker.minimumDate           = nil;
    datePicker.maximumDate           = nil;
    datePicker.locale                = [NSLocale currentLocale];
    datePicker.datePickerMode        = UIDatePickerModeDate;
    datePicker.locale                = [NSLocale localeWithLocaleIdentifier:@"zh"];
    datePicker.minuteInterval        = 1;
    datePicker.date                  = date ? date : [NSDate date];
    
    return datePicker;
}

@end
