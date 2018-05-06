//
//  MVVMViewModel.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "MVVMViewModel.h"
#import "MVVMModel.h"
@interface MVVMViewModel()
@property(nonatomic ,strong)MVVMModel *model;
@end
@implementation MVVMViewModel
-(instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}
-(void)setWithModel:(MVVMModel *)model{
    self.model = model;
    self.contentStr = model.content;
}
-(void)onPrintClick{
    self.model.content = @"model 改变数据了";
    self.contentStr = self.model.content;
}
@end
