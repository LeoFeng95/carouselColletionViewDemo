//
//  JZYIProgressView.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JZYIProgressView : UIProgressView

+ (instancetype)setupPickerViewWithFrame:(CGRect)frame
                       progressTintColor:(UIColor *)progressTintColor
                          trackTintColor:(UIColor *)trackTintColor
                           progressImage:(UIImage *)progressImage
                              trackImage:(UIImage *)trackImage;

@end
