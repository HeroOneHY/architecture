//
//  Prensent.h
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPView.h"
#import "MVPMode.h"
@interface Prensent : NSObject
@property(nonatomic, strong)MVPView *mView;
@property(nonatomic, strong)MVPMode *model;
-(void)printTask;
@end
