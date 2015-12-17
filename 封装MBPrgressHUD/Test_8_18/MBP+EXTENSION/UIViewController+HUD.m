//
//  UIViewController+HUD.m
//  Test_8_18
//
//  Created by 李涛 on 15/12/17.
//  Copyright © 2015年 敲代码的小毛驴. All rights reserved.
//

#import "UIViewController+HUD.h"

@implementation UIViewController (HUD)

- (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view{
    
    if (view == nil) {
        view = [UIApplication sharedApplication].keyWindow;
    }
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    hud.labelText = text;
    
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@",icon]]];
    
    hud.mode = MBProgressHUDModeCustomView;
    
    hud.removeFromSuperViewOnHide = YES;
    
    [hud hide:YES afterDelay:0.7];
    
}

#pragma mark - 显示一些信息

- (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view{
    
    if (view == nil) {
        
        view = (UIView *)[UIApplication sharedApplication].keyWindow;
    }
    
    if (message == nil) {
        
        message = @"";
    }
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    hud.labelText = message;
    
    hud.removeFromSuperViewOnHide = YES;
    
    //YES是需要蒙版效果
    hud.dimBackground = YES;
    
    return hud;
}

- (void)showError:(NSString *)string{
    
    if (string == nil) {
        string = @"";
    }
    
    [self show:string icon:@"error.png" view:nil];
}

- (void)showSuccess:(NSString *)string{
    if (string) {
        string = @"";
    }
    [self show:string icon:@"success.png" view:nil];
}

- (void)hideHUDWithView:(UIView *)view{
    
    if (view == nil) {
        
        view = [UIApplication sharedApplication].keyWindow;
    }
    
    [MBProgressHUD hideAllHUDsForView:view animated:YES];
}

@end
