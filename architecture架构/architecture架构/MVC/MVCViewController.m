//
//  MVCViewController.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "MVCModel.h"
@interface MVCViewController () <MVCViewDelegate>
@property(nonatomic, strong)MVCView *myView;
@property(nonatomic, strong)MVCModel *myModel;
@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  //controller可以修改view和model，view采集的用户数据和用户事件会反馈给controller，view可以读取model进而展现自己的界面
    self.myView = [MVCView new];
    self.myView.delegate = self;
    self.myView.frame = self.view.bounds;
    [self.view addSubview:self.myView];
    self.myModel = [MVCModel new];
    self.myModel.content = @"第0行";
    [self printModel];
}

-(void)printModel{
    [self.myView printOnView:self.myModel];
}
-(void)onPrintBtnClick{
    _myModel.content = @"model 改变数据了";
    [_myView printOnView:_myModel];
}


@end
