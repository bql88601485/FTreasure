//
//  BonusSuspendHeader.h
//  WinTreasure
//
//  Created by Apple on 16/7/4.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import <UIKit/UIKit.h>

extern CGFloat kTSMenuHeight;

typedef void(^DiamondSuspendHeaderBlock)(id object);

@interface DiamondSuspendHeader : UIView

@property (nonatomic, copy) DiamondSuspendHeaderBlock block;

- (void)selectAMenu:(DiamondSuspendHeaderBlock)block;

@end
