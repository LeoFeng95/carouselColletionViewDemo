//
//  JZYILabel.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYILabel.h"

static CGFloat kDefaultLineSpacing = 5.f;

@interface JZYILabel ()

@property (nonatomic, strong) NSMutableAttributedString *dataMAtt;

@end

@implementation JZYILabel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.spacing = 0;
        self.radius = 0;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.spacing = 0;
        self.radius = 0;
    }
    return self;
}

+ (instancetype)setupLabelWithFrame:(CGRect)frame
                               font:(UIFont *)font
                          textColor:(UIColor *)textColor
                      textAlignment:(NSTextAlignment)textAlignment
                      numberOfLines:(NSInteger)numberOfLines
                               text:(NSString *)text
{
    JZYILabel *label    = [[JZYILabel alloc] init];
    label.backgroundColor = [UIColor clearColor];
    label.frame         = frame;
    label.font          = font;
    label.textColor     = textColor;
    label.textAlignment = textAlignment;
    label.text          = text;
    label.minimumScaleFactor = 14;
//    label.lineBreakMode = NSLineBreakByTruncatingMiddle | NSLineBreakByCharWrapping;
    label.numberOfLines = numberOfLines;
    return label;
}

- (void)setRadius:(CGFloat)radius {
    UIColor *tempColor = [self.backgroundColor copy];
    self.backgroundColor = nil;
    self.layer.backgroundColor = tempColor.CGColor;
    self.layer.cornerRadius = radius;
}

- (CGFloat)radius {
    return self.layer.cornerRadius;
}

//刷新带行距文本,只限于普通文本
- (void)refreshUIWithSpace
{
    NSDictionary *dict = [self p_getPragraphStyleDictWithFont:self.font color:self.textColor spacing:self.spacing];
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:self.text attributes:dict];
    self.attributedText = attributeStr;
}

//获取带行距的高度,只限于普通文本
- (CGFloat)getSpaceHeightOfWidth:(CGFloat)width
{
    NSDictionary *dict = [self p_getPragraphStyleDictWithFont:self.font color:self.textColor spacing:self.spacing];
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                     options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                  attributes:dict
                                     context:nil].size;
    return size.height + self.spacing;
}

#pragma mark - 富文本操作

- (void)addAttributedText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor
{
    [self addAttributedText:text font:font textColor:textColor lineSpacing:kDefaultLineSpacing];
}

//
- (void)addAttributedText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor lineSpacing:(CGFloat)lineSpacing
{
    NSAttributedString *att = [[NSAttributedString alloc] initWithString:text attributes:[self p_getPragraphStyleDictWithFont:font color:textColor spacing:lineSpacing]];
    [self.dataMAtt appendAttributedString:att];
}

- (void)refreshAttributed
{
    self.attributedText = [self.dataMAtt copy];
}

//设置富文本属性
- (NSDictionary *)p_getPragraphStyleDictWithFont:(UIFont *)font color:(UIColor *)color spacing:(CGFloat)spcing{
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    
    paraStyle.alignment = self.textAlignment;
    
    paraStyle.lineSpacing = spcing; //设置行间距
    
    paraStyle.hyphenationFactor = 1.0;
    
    paraStyle.firstLineHeadIndent = 0.0;
    
    paraStyle.paragraphSpacingBefore = 0.0;
    
    paraStyle.headIndent = 0;
    
    paraStyle.tailIndent = 0;
    
    //设置字间距 NSKernAttributeName:@1.5f
    NSDictionary *dic = @{ NSFontAttributeName:font,
                           NSParagraphStyleAttributeName:paraStyle,
                           NSForegroundColorAttributeName: color,
                           //                           NSKernAttributeName:@1.5f
                           };
    return dic;
}

#pragma mark -

- (NSMutableAttributedString *)dataMAtt {
    if (!_dataMAtt) {
        _dataMAtt = [[NSMutableAttributedString alloc] init];
    }
    return _dataMAtt;
}

@end
