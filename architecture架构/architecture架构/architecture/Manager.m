//
//  Manager.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/5.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "Manager.h"
//#import "Employee.h"
#import "PrintNotification.h"
@implementation Manager
-(instancetype)init{
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(celebartePrintDone) name:Notif_PrintTaskDone object:nil];
    }
    return self;
}
+(instancetype)sharedInstance{
    static Manager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [Manager new];
    });
    return instance;
}
-(void)celebartePrintDone{
    NSLog(@"celebrate print done");
}
-(void)beginPrintTask{
  //  [Employee sharedInstance].delegate = self;  //employee不知道Manager的存在就完成了调用
 //  [[Employee sharedInstance]doPrintJob];
    [[NSNotificationCenter defaultCenter]postNotificationName:Notif_BeginePrintTask object:nil]; //双方互相不知道，把耦合转移到了PrintNotification.h中
}
@end
