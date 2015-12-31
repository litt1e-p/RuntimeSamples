//
//  UIButton+BackgroundContentMode.h
//  RuntimeSamples
//
//  Created by litt1e-p on 15/12/31.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (BackgroundContentMode)

@property (nonatomic, assign, nullable) UIImageView *backgroundImageView;
@property (nonatomic, assign) UIViewContentMode backgroundContentMode;

@end
