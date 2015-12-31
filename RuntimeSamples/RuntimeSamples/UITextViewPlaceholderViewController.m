//
//  UITextVIewPlaceholderViewController.m
//  RuntimeSamples
//
//  Created by litt1e-p on 15/12/31.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "UITextViewPlaceholderViewController.h"
#import "UITextView+Placeholder.h"

@implementation UITextViewPlaceholderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"TextViewPlaceholder";
    self.edgesForExtendedLayout = UIRectEdgeBottom;
    
    UITextView *tv       = [[UITextView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200)];
    tv.backgroundColor   = [UIColor groupTableViewBackgroundColor];
    tv.layer.borderWidth = 1.f;
    tv.layer.borderColor = [UIColor redColor].CGColor;
    tv.autoresizingMask  = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    tv.font              = [UIFont systemFontOfSize:25.f];
    [self.view addSubview:tv];
    
    UITextView *textView       = [[UITextView alloc] init];
    textView.layer.borderWidth = 1.f;
    textView.layer.borderColor = [UIColor redColor].CGColor;
    textView.frame             = CGRectMake(0, 230, CGRectGetWidth(self.view.bounds), 200);
    textView.autoresizingMask  = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    textView.placeholder       = @"I am placeholder";
    textView.font              = [UIFont systemFontOfSize:15];
    [self.view addSubview:textView];
}
@end
