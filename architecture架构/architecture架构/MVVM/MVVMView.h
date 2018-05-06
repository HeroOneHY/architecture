//
//  MVVMView.h
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"
@interface MVVMView : UIView
-(void)setWithViewMode:(MVVMViewModel *)vm;
@end
