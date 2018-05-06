//
//  Manager.h
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/5.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject 
+(instancetype)sharedInstance;
-(void)celebartePrintDone;
-(void)beginPrintTask;
@end
