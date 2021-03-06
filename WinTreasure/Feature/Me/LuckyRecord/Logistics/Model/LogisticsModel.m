//
//  LogisticsModel.m
//  WinTreasure
//
//  Created by Apple on 16/6/28.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import "LogisticsModel.h"

@implementation LogisticsModel

- (instancetype)init {
    self = [super init];
    if (self) {
        self.status = @"已签收，签收人是本人签收";
        self.time = @"2016-06-22 12:45:32";
        self.isUpdated = YES;
        
        self.logisticsInc = @"顺丰快递";
        self.logisticsStatus = @"已签收";
        self.orderNumber = @"868686868686";
        self.recieverAddress = @"广州市天河区XX路XX号XXXXX大厦XXX房";
        self.reciever = @"周杰伦";
        self.imgUrl = @"https://tse4-mm.cn.bing.net/th?id=OIP.M9271c634f71d813901afbc9e69602dcfo2&pid=15.1";
        self.recieverPhone = @"13810086086";
    }
    return self;
}

- (NSMutableArray *)statusArray {
    if (!_statusArray) {
        _statusArray = [NSMutableArray array];
    }
    return _statusArray;
}

@end
