//
//  ViewController.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/5.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"
#import "MVCViewController.h"
#import "MVPViewController.h"
#import "MVVMViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
    架构基础
     耦合
     delegate
     notification
    */
   // [[Manager sharedInstance]beginPrintTask];
    
    
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self testMVMV];
}
-(void)testMVC{
    MVCViewController *c = [MVCViewController new];
    [self presentViewController:c animated:NO completion:nil];
}
-(void)testMVP{
    MVPViewController *c = [MVPViewController new];
    [self presentViewController:c animated:NO completion:nil];
}
-(void)testMVMV{
    MVVMViewController *c = [MVVMViewController new];
    [self presentViewController:c animated:NO completion:nil];
}


@end
