//
//  UIViewController+HUD.h
//  Test_8_18
//
//  Created by 李涛 on 15/12/17.
//  Copyright © 2015年 敲代码的小毛驴. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (HUD)

/**
 *  快速显示失败
 */
- (void)showError:(NSString *)string;

/**
 *  快速显示成功
 */
- (void)showSuccess:(NSString *)string;

/**
 *  转菊花等待
 */
- (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

/**
 *  隐藏菊花
 */
- (void)hideHUDWithView:(UIView *)view;

@end
