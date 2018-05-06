//
//  MVCView.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "MVCView.h"

@interface MVCView()
@property(nonatomic, strong)UIButton *btnPrint;
@end
@implementation MVCView

-(instancetype)init{
    if (self = [super init]) {
        self.btnPrint = [UIButton new];
        [self addSubview:self.btnPrint];
        self.backgroundColor = [UIColor lightGrayColor];
        self.btnPrint.frame = CGRectMake(100, 100, 100, 100);
        [self.btnPrint setTitle:@"print" forState:UIControlStateNormal];
        [self.btnPrint addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}
-(void)printOnView:(MVCModel *)model{
    NSLog(@"printOnView：%@",model.content);
}

-(void)onPrintClick{
    if ([_delegate respondsToSelector:@selector(onPrintBtnClick)]) {
        [self.delegate onPrintBtnClick];
    }
}
@end
