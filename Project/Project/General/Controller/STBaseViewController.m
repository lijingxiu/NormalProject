//
//  STBaseViewController.m
//  Project
//
//  Created by steven on 2019/10/12.
//  Copyright © 2019 steven. All rights reserved.
//

#import "STBaseViewController.h"

@interface STBaseViewController ()
{
}

@end

@implementation STBaseViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // Custom initialization
        self.iosChangeFloat = 20;
        if (@available(iOS 11.0, *)) {
            self.iosChangeFloat = UIApplication.sharedApplication.keyWindow.safeAreaInsets.top;
        }
        self.tabbarHeight = kTabBarHeight;
        if (@available(iOS 11.0, *)) {
            CGFloat safeAreaBottom = UIApplication.sharedApplication.keyWindow.safeAreaInsets.bottom;
            self.tabbarHeight = self.tabbarHeight + safeAreaBottom / 1.5f;
        }
        
        
        self.netRequest = [NSMutableArray array];
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    [self initSubviews];
    // Do any additional setup after loading the view.
}

-(void)initSubviews{
    
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(0, self.iosChangeFloat+kNavHeight, kScreen_Width, self.view.height-(kNavHeight+self.iosChangeFloat))];
    _contentView.backgroundColor = kMainBGColor;
    NSLog(@"%f",kScreen_Height);
    [self.view addSubview:_contentView];
}
- (void)loadView
{
    [super loadView];
    self.view.backgroundColor = kMainBGColor;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

//取消本VC的所有网络请求
- (void)cancelAllNetRequest{
    //    for(CLRequest *request in self.netRequest){
    //        if([request isKindOfClass:[CLRequest class]]){
    //            [request stop];
    //        }
    //    }
    [_netRequest removeAllObjects];
}

- (void)dealloc{
    //BSLog(@"test");
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self cancelAllNetRequest];
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
