//
//  JZYITextView.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JZYITextView : UITextView

@property (nonatomic, copy) NSString *placeholder; //!< 占位文本文本

@property (nonatomic, strong) UIColor *placeholderColor; //!< 占位文本颜色

+ (instancetype)setupTextViewWithFrame:(CGRect)frame
                                  font:(UIFont *)font
                             textColor:(UIColor *)textColor
                         textAlignment:(NSTextAlignment)textAlignment
                           placeholder:(NSString *)placeholder
                                  text:(NSString *)text;

@end
