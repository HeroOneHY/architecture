//
//  MVPViewController.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "MVPViewController.h"
#import "Prensent.h"

#import "MVPView.h"
#import "MVPMode.h"
@interface MVPViewController ()
@property(nonatomic, strong)Prensent *sent;
@property(nonatomic, strong)MVPView *mView;
@property(nonatomic, strong)MVPMode *mModel;
@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //传统的MVC模式 view采集的用户数据和用户事件会反馈给controller，Controller修改Model，Model修改以后间接改变View
    //MVP模式，model和view互相不存在引用，不存在依赖
    self.sent = [Prensent new];
    self.mView = [MVPView new];
    _mView.delegate = self.sent;
    _mView.frame = self.view.bounds;
    [self.view addSubview:_mView];
    self.mModel = [MVPMode new];
    self.mModel.content = @"line 0";
    
    self.sent.mView= _mView;
    self.sent.model = _mModel;

    [self.sent printTask];
    
}


@end
