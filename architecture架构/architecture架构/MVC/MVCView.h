//
//  MVCView.h
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCModel.h"
@protocol MVCViewDelegate <NSObject>
- (void)onPrintBtnClick;
@end
@interface MVCView : UIView
-(void)printOnView:(MVCModel *)model;

@property(nonatomic, weak)id<MVCViewDelegate>delegate;
@end
