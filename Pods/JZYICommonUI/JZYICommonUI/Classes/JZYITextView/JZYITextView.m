//
//  JZYITextView.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYITextView.h"

@interface JZYITextView ()

@property (nonatomic, strong) UILabel *placeholderLabel;  //!< 占位为文本

@end

@implementation JZYITextView

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self p_setupDefautl];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        [self p_setupDefautl];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.placeholderLabel.frame = CGRectMake(5, 8, CGRectGetWidth(self.frame) - 2 * 5, 0);
    [self.placeholderLabel sizeToFit];
}

+ (instancetype)setupTextViewWithFrame:(CGRect)frame
                                  font:(UIFont *)font
                             textColor:(UIColor *)textColor
                         textAlignment:(NSTextAlignment)textAlignment
                           placeholder:(NSString *)placeholder
                                  text:(NSString *)text
{
    JZYITextView *textView       = [[JZYITextView alloc] init];
    textView.backgroundColor     = [UIColor clearColor];
    textView.frame               = frame;
    textView.font                = font;
    textView.textColor           = textColor;
    textView.textAlignment       = textAlignment;
    textView.text                = text;
    textView.placeholder         = placeholder;

    return textView;
}

- (void)textDidChange:(NSNotification *)note {
    _placeholderLabel.hidden = self.hasText;
}

- (void)p_setupDefautl
{
    // 设置默认字体
    self.font = [UIFont systemFontOfSize:14.f];
    // 设置默认颜色
    self.placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    // 设置默认占位文本
    self.placeholder = nil;
    
    // 创建label
    [self addSubview:self.placeholderLabel];
    
    // 使用通知监听文字改变
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textDidChange:)
                                                 name:UITextViewTextDidChangeNotification
                                               object:self];
}

#pragma mark - setter

- (UILabel *)placeholderLabel {
    if (!_placeholderLabel) {
        _placeholderLabel = [[UILabel alloc] init];
        _placeholderLabel.textAlignment = NSTextAlignmentLeft;
        _placeholderLabel.numberOfLines = 0;
    }
    return _placeholderLabel;
}

- (void)setPlaceholder:(NSString *)placeholder {
    _placeholder = [placeholder copy];
    
    self.placeholderLabel.text = placeholder;
    [self.placeholderLabel sizeToFit];
    
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    _placeholderColor = placeholderColor;
    
    self.placeholderLabel.textColor = placeholderColor;
}

- (void)setFont:(UIFont *)font {
    [super setFont:font];
    
    self.placeholderLabel.font = font;
    [self.placeholderLabel sizeToFit];
    
}

- (void)setText:(NSString *)text {
    [super setText:text];
    
    self.placeholderLabel.hidden = self.hasText;
}

- (void)setAttributedText:(NSAttributedString *)attributedText {
    [super setAttributedText:attributedText];
    
    self.placeholderLabel.hidden = self.hasText;
}

@end
