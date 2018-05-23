//
//  JZYITableView.m
//  JZYSmartCommunityOwner
//
//  Created by YouchengLi on 2017/10/26.
//  Copyright © 2017年 liyoucheng. All rights reserved.
//

#import "JZYITableView.h"

@implementation JZYITableView

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

+ (instancetype)setupTableViewWithFrame:(CGRect)frame
                                  style:(UITableViewStyle)style
{
    JZYITableView *tableView = [[JZYITableView alloc] initWithFrame:frame style:style];
    tableView.backgroundColor = [UIColor clearColor];
//    tableView.separatorStyle  = UITableViewCellSeparatorStyleNone;
    tableView.estimatedRowHeight = 0;
    tableView.estimatedSectionFooterHeight = 0;
    tableView.estimatedSectionHeaderHeight = 0;
    return tableView;
}

@end
