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
    self.view.backgroundColor = kMainBGColor;
    [self topBar];
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(0, self.iosChangeFloat+kNavHeight, kScreen_Width, self.view.height-(self.iosChangeFloat-kNavHeight-self.tabbarHeight))];
    _contentView.backgroundColor = kMainBGColor;
    [self.view addSubview:_contentView];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

//初始化顶部导航
- (STTopBar *)topBar{
    if(!_topBar){
        _topBar = [[STTopBar alloc] initWithFrame:CGRectMake(0, 0, kScreen_Width, self.iosChangeFloat+kNavHeight)];
        [_topBar setLetfTitle:nil];
        [_topBar.btnLeft addTarget:self action:@selector(leftBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_topBar];
    }
    return _topBar;
}
- (void)leftBtnClick{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setIsNavHide:(BOOL)isNavHide{
    _isNavHide = isNavHide;
    if(isNavHide){
        [_topBar removeFromSuperview];
        self.topBar = nil;
        _contentView.frame = CGRectMake(0, 0, kScreen_Width, kScreen_Height-kTabBarHeight);
    }else{
        [self topBar];
        _contentView.frame = CGRectMake(0, self.iosChangeFloat+kNavHeight, kScreen_Width, kScreen_Height-(self.iosChangeFloat+kNavHeight)-kTabBarHeight);
    }
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

@end
