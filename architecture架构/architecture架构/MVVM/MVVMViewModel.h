//
//  MVVMViewModel.h
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MVVMModel;
@interface MVVMViewModel : NSObject
@property(nonatomic, strong)NSString *contentStr;
-(void)setWithModel:(MVVMModel *)model;
-(void)onPrintClick;
@end
