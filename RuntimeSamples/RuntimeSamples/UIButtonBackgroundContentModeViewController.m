//
//  UIButtonBackgroundContentModeViewController.m
//  RuntimeSamples
//
//  Created by litt1e-p on 15/12/31.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "UIButtonBackgroundContentModeViewController.h"
#import "UIButton+BackgroundContentMode.h"

@interface UIButtonBackgroundContentModeViewController ()

@end

@implementation UIButtonBackgroundContentModeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"BtnContentMode";
    
    CGRect btnFrame             = CGRectMake(self.view.frame.size.width * 0.5 - 50, 200, 100, 50);
    UIButton *normalBtn         = [UIButton buttonWithType:UIButtonTypeCustom];
    normalBtn.frame             = btnFrame;
    normalBtn.layer.borderColor = [UIColor redColor].CGColor;
    normalBtn.layer.borderWidth = 1.f;
    [normalBtn setBackgroundImage:[UIImage imageNamed:@"delete"] forState:UIControlStateNormal];
//    normalBtn.backgroundImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:normalBtn];
    
    CGRect contenModeBtnFrame       = CGRectMake(self.view.frame.size.width * 0.5 - 50, 300, 100, 50);
    UIButton *contenModeBtn         = [UIButton buttonWithType:UIButtonTypeCustom];
    contenModeBtn.frame             = contenModeBtnFrame;
    contenModeBtn.layer.borderColor = [UIColor redColor].CGColor;
    contenModeBtn.layer.borderWidth = 1.f;
    [contenModeBtn setBackgroundImage:[UIImage imageNamed:@"delete"] forState:UIControlStateNormal];
    [contenModeBtn setBackgroundContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:contenModeBtn];
}

@end
