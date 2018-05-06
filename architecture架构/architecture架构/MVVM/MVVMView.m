//
//  MVVMView.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "MVVMView.h"
#import "MVVMModel.h"
#import "KVOController.h"
@interface MVVMView()
@property(nonatomic, strong)UILabel *label;
@property(nonatomic, strong)UIButton *btnPrint;
@property(nonatomic, strong)MVVMViewModel *vm;
@end
@implementation MVVMView

-(instancetype)init{
    if (self =[super init]) {
        self.backgroundColor = [UIColor lightGrayColor];
        self.label = [UILabel new];
        [self addSubview:self.label];
        _label.frame = CGRectMake(0, 100, 300, 30);
        _label.textAlignment = NSTextAlignmentCenter;
        _label.textColor = [UIColor blackColor];
        
        self.btnPrint = [UIButton new];
        [self addSubview:self.btnPrint];
        self.backgroundColor = [UIColor lightGrayColor];
        self.btnPrint.frame = CGRectMake(100, 100, 100, 100);
        [self.btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [self.btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}
-(void)setWithViewMode:(MVVMViewModel *)vm{
    self.vm = vm;
   [ self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionInitial || NSKeyValueChangeNewKey block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
       self.label.text = change[NSKeyValueChangeNewKey];
   }];
}

-(void)onPrintClick{
    [self.vm onPrintClick];
}
@end
