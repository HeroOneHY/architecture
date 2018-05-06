//
//  Prensent.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "Prensent.h"

@interface Prensent()<MVPViewDelegate>

@end
@implementation Prensent
-(void)printTask{
    NSString *printcontent = _model.content;
    [_mView printOnView:printcontent];
}
-(void)onPrintBtnClick{
    _model.content = @"model 改变数据了";
    [_mView printOnView:_model.content];
}
@end
