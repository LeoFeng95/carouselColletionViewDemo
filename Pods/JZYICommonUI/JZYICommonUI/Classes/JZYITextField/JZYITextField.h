//
//  JZYITextField.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JZYIInputValidator;
@interface JZYITextField : UITextField

/**
 *  抽象的策略
 */
@property (nonatomic, strong) JZYIInputValidator *validator;


/**
 *  验证输入合法性
 *
 *  @return 是否合法,不合法,读取InputValidator当中的errorMessage
 */
- (BOOL)validate;

+ (instancetype)setupTextFieldWithFrame:(CGRect)frame
                                   font:(UIFont *)font
                              textColor:(UIColor *)textColor
                          textAlignment:(NSTextAlignment)textAlignment
                            placeholder:(NSString *)placeholder
                                   text:(NSString *)text;

@end
