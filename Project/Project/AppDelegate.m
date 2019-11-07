//
//  AppDelegate.m
//  Project
//
//  Created by steven on 2019/10/8.
//  Copyright © 2019 steven. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "STTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //将window 设置成keywindow
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self layoutMainView:nil];
    return YES;
}
- (void)layoutMainView:(id)sender
{
    STTabBarController *tabbarController = [[STTabBarController alloc] init];
    [self.window setRootViewController:tabbarController];
}


@end
