//
//  TempPushViewController.m
//  RuntimeSamples
//
//  Created by litt1e-p on 15/12/31.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "TempPushViewController.h"
#import "UINavigationBar+HiddenStatusBar.h"

@implementation TempPushViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"close" style:UIBarButtonItemStyleDone target:self action:@selector(close)];
    self.navigationController.navigationBar.hideStatusBar = YES;
}

- (void)close
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
