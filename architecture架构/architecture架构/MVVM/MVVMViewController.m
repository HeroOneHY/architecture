//
//  MVVMViewController.m
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMView.h"
#import "MVVMModel.h"
#import "MVVMViewModel.h"
@interface MVVMViewController ()
@property(nonatomic, strong)MVVMView *mview;
@property(nonatomic, strong)MVVMModel *mmodel;
@property(nonatomic, strong)MVVMViewModel *mvvm;
@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //m，v实现双向绑定；m的值改变，view界面自动更新；从而view和model能专心于逻辑
    self.mmodel = [MVVMModel new];
    self.mmodel.content = @"line0";
    self.mvvm = [MVVMViewModel new];
    self.mview = [MVVMView new];
    self.mview.frame = self.view.bounds;
    [self.view addSubview:self.mview];
    
    [_mview setWithViewMode:self.mvvm];
    [_mvvm setWithModel:_mmodel];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
