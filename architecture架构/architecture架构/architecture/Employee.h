//
//  Employee.h
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/5.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol EmployeePrintDelegate <NSObject>
-(void)printJobDone;
@end
@interface Employee : NSObject
+(instancetype)sharedInstance;
-(void)doPrintJob;

@property(nonatomic,weak)id<EmployeePrintDelegate>delegate;
@end
