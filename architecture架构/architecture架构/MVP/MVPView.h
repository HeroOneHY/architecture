//
//  MVPView.h
//  architecture架构
//
//  Created by HeroOneHy on 2018/5/6.
//  Copyright © 2018年 HeroOneHy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDelegate <NSObject>
- (void)onPrintBtnClick;
@end

@interface MVPView : UIView
-(void)printOnView:(NSString *)content;
@property(nonatomic, weak)id<MVPViewDelegate>delegate;
@end
