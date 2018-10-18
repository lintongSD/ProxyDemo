//
//  LTNetTools.h
//  ProxyDemo
//
//  Created by zhifan on 2018/10/10.
//  Copyright © 2018 zhifan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol NetToolsProtocol <NSObject>

- (void)getRequestProtocol;

@end
@interface LTNetTools : NSObject
- (void)postAction;
@end

NS_ASSUME_NONNULL_END
