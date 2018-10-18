//
//  LTProxy.h
//  ProxyDemo
//
//  Created by zhifan on 2018/10/10.
//  Copyright © 2018 zhifan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LTNetTools.h"
NS_ASSUME_NONNULL_BEGIN

@interface LTProxy : NSProxy
+ (id)proxyWithObj:(id)obj;
@end

NS_ASSUME_NONNULL_END
