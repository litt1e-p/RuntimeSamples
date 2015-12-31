//
//  UINavigationHiddenStatusBarViewController.m
//  RuntimeSamples
//
//  Created by litt1e-p on 15/12/31.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "UINavigationHiddenStatusBarViewController.h"
#import "UIButton+Block.h"
#import "TempPushViewController.h"
#import "TempNavigationController.h"

@implementation UINavigationHiddenStatusBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"HiddenStatusBar";
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = (CGRect){CGPointMake(self.view.frame.size.width * 0.5 - 50, self.view.frame.size.height * 0.5), {100, 50}};
    [btn setTitle:@"push me" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor colorWithRed:69/255.f green:91/255.f blue:152/255.f alpha:1] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:20.f];
    btn.layer.borderColor = [UIColor colorWithRed:69/255.f green:91/255.f blue:152/255.f alpha:1].CGColor;
    btn.layer.borderWidth = 1.f;
    [btn handelWithEventBlock:^{
        TempNavigationController *nav = [[TempNavigationController alloc] initWithRootViewController:[[TempPushViewController alloc] init]];
        [self.navigationController presentViewController:nav animated:YES completion:nil];
    }];
    [self.view addSubview:btn];
}

@end
