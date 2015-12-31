//
//  UINavigationItemMarginViewController.m
//  RuntimeSamples
//
//  Created by litt1e-p on 15/12/31.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "UINavigationItemMarginViewController.h"
#import "UINavigationItem+Margin.h"

@implementation UINavigationItemMarginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(leftBarButtonItemClick)];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(rightBarButtonItemClick)];
    UIBarButtonItem *rightItem2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(rightBarButtonItemClick)];
    UIBarButtonItem *rightItem3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(rightBarButtonItemClick)];
    
    self.navigationItem.leftBarButtonItem = leftItem;
    self.navigationItem.rightBarButtonItems = @[rightItem, rightItem2, rightItem3];
    self.navigationItem.rightMargin = 100;
}

- (void)leftBarButtonItemClick
{
    
}

- (void)rightBarButtonItemClick
{
    
}

@end
