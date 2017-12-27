//
//  MTConfirmOrderServiceProvide.m
//  MTConfirmOrder
//
//  Created by Charon on 16/12/18.
//  Copyright © 2016年 Charon. All rights reserved.
//

#import "MTConfirmOrderServiceProvide.h"
#import <MTProtocolManager/MTProtocolManager.h>
#import <MTConfirmOrderServiceProtocol/MTConfirmOrderServiceProtocol.h>

#import "MTConfirmOrderViewController.h"
@interface MTConfirmOrderServiceProvide()<MTConfirmOrderServiceProtocol>


@end


@implementation MTConfirmOrderServiceProvide

+ (void)load
{
    [MTProtocolManager registServiceProvide:[self new] forProtocol:@protocol(MTConfirmOrderServiceProtocol)];
}

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete
{
    MTConfirmOrderViewController *confirmOrderVC = [[MTConfirmOrderViewController alloc] initWithGoodsId:goodsId sureComplete:sureComplete];
    return confirmOrderVC;
}

@end
