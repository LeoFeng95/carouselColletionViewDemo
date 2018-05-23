//
//  JZYIInputValidator.h
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/11/7.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JZYIInputValidator : NSObject

/**
 *  策略的输入
 *
 *  @param input 输入
 *
 *  @return 如果为YES,表示测试通过,如果为NO,表示测试不通过
 */
- (BOOL)validateInput:(UITextField *)input;

/**
 *  当validateInput为NO的时候,我们来读取errorMessage
 */
@property (nonatomic, strong) NSString *errorMessage;

@end
