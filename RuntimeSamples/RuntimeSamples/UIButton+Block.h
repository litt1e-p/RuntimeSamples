//
//  UIButton+Block.h
//  emb
//
//  Created by litt1e-p on 15/12/31.
//  Copyright (c) 2015年 youkastation. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^btnBlock)();

@interface UIButton (Block)

- (void)handelWithEventBlock:(btnBlock)block;

@end
