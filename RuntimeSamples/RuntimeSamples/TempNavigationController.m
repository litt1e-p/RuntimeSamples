//
//  TempNavigationController.m
//  RuntimeSamples
//
//  Created by litt1e-p on 15/12/31.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "TempNavigationController.h"

@implementation TempNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpStatusBar];
    [self setupThemeBar];
}

- (void)setUpStatusBar
{
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

- (void)setupThemeBar
{
    [self.navigationBar setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:69/255.f green:91/255.f blue:152/255.f alpha:1]] forBarPosition:UIBarPositionTopAttached barMetrics:UIBarMetricsDefault];
    [self.navigationBar setTitleTextAttributes:@{
                                                 NSForegroundColorAttributeName : [UIColor whiteColor],
                                                 NSFontAttributeName : [UIFont fontWithName:@"Helvetica Neue" size:15.0]
                                                 }];
    [self.navigationBar setTintColor:[UIColor whiteColor]];
}

- (UIImage *)imageWithColor:(UIColor *)color
{
    CGSize imageSize = CGSizeMake(1, 44);
    CGRect rect = CGRectMake(0.0f, 0.0f, imageSize.width, imageSize.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
