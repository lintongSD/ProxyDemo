//
//  LTProxy.m
//  ProxyDemo
//
//  Created by zhifan on 2018/10/10.
//  Copyright © 2018 zhifan. All rights reserved.
//

#import "LTProxy.h"
@interface LTProxy () {
    id _object;
}
@end

@implementation LTProxy
#pragma mark - class method

+ (id)proxyWithObj:(id)obj{
    LTProxy *proxy = [LTProxy alloc];
    proxy->_object = obj;
    return proxy;
}

#pragma mark - NSProxy override methods
- (void)forwardInvocation:(NSInvocation *)invocation{
    if ([_object respondsToSelector:invocation.selector]) {
        [invocation invokeWithTarget:_object];
        
        NSString *selectorName = NSStringFromSelector(invocation.selector);
        
        if ([selectorName isEqualToString:@"postAction"]) {
            [self aopAction];
        }
        NSLog(@"++++++++ %@", selectorName);
    }else{
        NSLog(@"该方法不存在");
    }
}
- (void)aopAction{
    NSLog(@"埋点成功");
}
- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    return [_object methodSignatureForSelector:sel];
}
@end
