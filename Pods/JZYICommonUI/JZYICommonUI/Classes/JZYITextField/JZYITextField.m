//
//  JZYITextField.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYITextField.h"

#import "JZYIInputValidator.h"

@implementation JZYITextField

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

+ (instancetype)setupTextFieldWithFrame:(CGRect)frame
                                   font:(UIFont *)font
                              textColor:(UIColor *)textColor
                          textAlignment:(NSTextAlignment)textAlignment
                            placeholder:(NSString *)placeholder
                                   text:(NSString *)text
{
    JZYITextField *textField         = [[JZYITextField alloc] init];
    textField.backgroundColor        = [UIColor clearColor];
    textField.frame                  = frame;
    textField.font                   = font;
    textField.textColor              = textColor;
    textField.textAlignment          = textAlignment;
    textField.text                   = text;
    textField.placeholder            = placeholder;
    textField.clearButtonMode        = UITextFieldViewModeWhileEditing;

//    NSMutableDictionary *attDict = [NSMutableDictionary dictionary];
//    attDict[NSFontAttributeName] = [UIFont systemFontOfSize:14.f];
//    attDict[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
//    textField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeholder attributes:attDict];

    return textField;
}

- (BOOL)validate {
    
    return [self.validator validateInput:self];
}


@end
