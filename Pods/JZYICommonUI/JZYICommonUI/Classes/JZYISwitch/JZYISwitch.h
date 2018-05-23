//
//  JZYISwitch.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JZYISwitch : UISwitch

+ (instancetype)setupSwitchViewWithFrame:(CGRect)frame
                             onTintColor:(UIColor *)onTintColor
                               tintColor:(UIColor *)tintColor
                          thumbTintColor:(UIColor *)thumbTintColor
                                 onImage:(UIImage *)onImage
                                offImage:(UIImage *)offImage;

@end
