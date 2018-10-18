//
//  ViewController.m
//  ProxyDemo
//
//  Created by zhifan on 2018/10/10.
//  Copyright © 2018 zhifan. All rights reserved.
//

#import "ViewController.h"
#import "LTProxy.h"
#import "LTNetTools.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    LTNetTools *tool = [LTProxy proxyWithObj:[LTNetTools new]];
    [tool postAction];
}

@end
