//
//  MVPView.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "MVPView.h"
@interface MVPView()
@property(nonatomic, strong)UILabel *label;
@property(nonatomic, strong)UIButton *btnPrint;
@end
@implementation MVPView

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
-(void)printOnView:(NSString *)content{
    
    _label.text = content;
}

-(void)onPrintClick{
    if ([_delegate respondsToSelector:@selector(onPrintBtnClick)]) {
        [self.delegate onPrintBtnClick];
    }
}
@end
