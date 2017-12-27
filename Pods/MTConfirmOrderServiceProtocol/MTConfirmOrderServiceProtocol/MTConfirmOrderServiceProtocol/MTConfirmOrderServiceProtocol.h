//
//  MTConfirmOrderServiceProtocol.h
//  MTConfirmOrderServiceProtocol
//
//  Created by 森 on 2017/12/27.
//  Copyright © 2017年 Za. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MTConfirmOrderServiceProtocol <NSObject>

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;

@end

