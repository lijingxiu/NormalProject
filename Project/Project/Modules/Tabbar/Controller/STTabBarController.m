//
//  STTabBarController.m
//  Project
//
//  Created by steven on 2019/11/1.
//  Copyright © 2019 steven. All rights reserved.
//

#import "STTabBarController.h"
#import "ViewController.h"
#import "STNavigationController.h"
#import "RDVTabBarItem.h"


@interface STTabBarController ()

@end

@implementation STTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    [self setupViewControllers];

    // Do any additional setup after loading the view.
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
}

- (void)setupViewControllers {
    UIViewController *firstViewController = [[ViewController alloc] init];
    STNavigationController *firstNavigationController = [[STNavigationController alloc]
                                                   initWithRootViewController:firstViewController];
    
    UIViewController *secondViewController = [[ViewController alloc] init];
    STNavigationController *secondNavigationController = [[STNavigationController alloc]
                                                   initWithRootViewController:secondViewController];
    
    UIViewController *thirdViewController = [[ViewController alloc] init];
    STNavigationController *thirdNavigationController = [[STNavigationController alloc]
                                                   initWithRootViewController:thirdViewController];

    
    [self setViewControllers:@[firstNavigationController, secondNavigationController,
                               thirdNavigationController]];
    [self customizeTabBar];
}

- (void)customizeTabBar{
    UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
    UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
    NSArray *tabBarItemImages = @[@"first", @"second", @"third"];
    
    NSInteger index = 0;
    for (RDVTabBarItem *item in [[self tabBar] items]) {
        [item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",
                                                      [tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_normal",
                                                        [tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        
        index++;
    }
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
