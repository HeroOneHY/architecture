//
//  Employee.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/5.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "Employee.h"
//#import "Manager.h"
#import "PrintNotification.h"
@implementation Employee
-(instancetype)init{
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(doPrintJob) name:Notif_BeginePrintTask object:nil];
    }
    return self;
}
+(instancetype)sharedInstance{
    static Employee *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Employee new];
    });
    return instance;
}
-(void)doPrintJob{
    NSLog(@"doing printing job");
  //  [[Manager sharedInstance]celebartePrintDone];
//    if ([_delegate respondsToSelector:@selector(printJobDone)]) {
//        [self.delegate printJobDone];
//    }
    [[NSNotificationCenter defaultCenter]postNotificationName:Notif_PrintTaskDone object:nil];
}
@end
