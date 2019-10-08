//
//  ViewController.m
//  Project
//
//  Created by steven on 2019/10/8.
//  Copyright © 2019 steven. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor redColor];
   CGRect frame = self.view.frame;
    NSLog(@"self.view - frame - %@", NSStringFromCGRect(frame));
    
    CGRect layoutFrame = self.view.safeAreaLayoutGuide.layoutFrame;
    NSLog(@"self.view - layoutFrame - %@", NSStringFromCGRect(layoutFrame));
    
    UIEdgeInsets insets = self.view.safeAreaInsets;
    NSLog(@"self.view - insets - %@", NSStringFromUIEdgeInsets(insets));
    // Do any additional setup after loading the view.
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];

    CGRect frame = self.view.frame;
    NSLog(@"self.view - frame - %@", NSStringFromCGRect(frame));
    
    CGRect layoutFrame = self.view.safeAreaLayoutGuide.layoutFrame;
    NSLog(@"self.view - layoutFrame - %@", NSStringFromCGRect(layoutFrame));
    
    UIEdgeInsets insets = self.view.safeAreaInsets;
    NSLog(@"self.view - insets - %@", NSStringFromUIEdgeInsets(insets));
}

@end
