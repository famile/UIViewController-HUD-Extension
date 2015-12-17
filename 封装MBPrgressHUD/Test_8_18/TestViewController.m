//
//  TestViewController.m
//  Test_8_18
//
//  Created by 李涛 on 15/12/17.
//  Copyright © 2015年 敲代码的小毛驴. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self showHUD1];
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeSystem)];
    
    btn.frame = CGRectMake(50, 50, 100, 100);
    
    btn.backgroundColor = [UIColor blackColor];
    
    [btn addTarget:self action:@selector(endHUD) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self.view addSubview:btn];
    
    

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self showHUD1];
}

- (void)endHUD{
    
    [self hideHUDWithView:nil];
}

- (void)showHUD1{
    [self showMessage:@"等着" toView:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self hideHUDWithView:nil];
    });
    
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
