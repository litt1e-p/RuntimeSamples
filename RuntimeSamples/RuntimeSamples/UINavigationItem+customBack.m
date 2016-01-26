//
//  UINavigationItem+customBack.m
//  RuntimeSamples
//
//  Created by little-p paul on 16/1/26.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "UINavigationItem+customBack.h"
#import <objc/runtime.h>

@implementation UINavigationItem (customBack)

static char kCustomBackButtonKey;

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method originalMethodImp = class_getInstanceMethod(self, @selector(backBarButtonItem));
        Method destMethodImp = class_getInstanceMethod(self, @selector(customBackBtn_backBarbuttonItem));
        method_exchangeImplementations(originalMethodImp, destMethodImp);
    });
}


- (UIBarButtonItem *)customBackBtn_backBarbuttonItem{
    UIBarButtonItem *item = [self customBackBtn_backBarbuttonItem];
    if (item) {
        return item;
    }
    item = objc_getAssociatedObject(self, &kCustomBackButtonKey);
    if (!item) {
        item = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleBordered target:nil action:NULL];
        objc_setAssociatedObject(self, &kCustomBackButtonKey, item, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return item;
}

- (void)dealloc
{
    objc_removeAssociatedObjects(self);
}

@end
