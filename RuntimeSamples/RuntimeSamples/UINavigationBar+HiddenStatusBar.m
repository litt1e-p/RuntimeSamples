//
//  UINavigationBar+HiddenStatusBar.m
//  RuntimeSamples
//
//  Created by litt1e-p on 15/12/31.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import <objc/runtime.h>
#import "UINavigationBar+HiddenStatusBar.h"

@implementation UINavigationBar (HiddenStatusBar)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        BOOL notAdded = class_addMethod(self, @selector(layoutSubviews), [self instanceMethodForSelector:@selector(__layoutSubviews)], method_getTypeEncoding(class_getInstanceMethod(self, @selector(__layoutSubviews))));
        if (notAdded) {
            class_replaceMethod(self, @selector(__layoutSubviews), [self instanceMethodForSelector:@selector(layoutSubviews)], method_getTypeEncoding(class_getInstanceMethod(self, @selector(layoutSubviews))));
        } else {
            method_exchangeImplementations(class_getInstanceMethod(self, @selector(layoutSubviews)), class_getInstanceMethod(self, @selector(__layoutSubviews)));
        }
    });
}

- (void)__layoutSubviews
{
    [self __layoutSubviews];
    if (self.hideStatusBar){
        Class backgroundClass = NSClassFromString(@"_UINavigationBarBackground");
        Class statusBarBackgroundClass = NSClassFromString(@"_UIBarBackgroundTopCurtainView");
        for (UIView * aSubview in self.subviews){
            if ([aSubview isKindOfClass:backgroundClass]) {
                aSubview.backgroundColor = [UIColor clearColor];
                for (UIView * aaSubview in aSubview.subviews){
                    if ([aaSubview isKindOfClass:statusBarBackgroundClass]) {
                        //aaSubview.hidden = YES;
                        aaSubview.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.01];
                    }
                }
            }
        }
    }
}

-(void)setHideStatusBar:(BOOL)yesOrno
{
    objc_setAssociatedObject(self, @selector(hideStatusBar), @(yesOrno), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self setNeedsLayout];
    
}

-(BOOL)hideStatusBar
{
    return objc_getAssociatedObject(self, @selector(hideStatusBar));
}

@end
