//
//  STBaseViewController.h
//  Project
//
//  Created by steven on 2019/10/12.
//  Copyright © 2019 steven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STTopBar.h"

NS_ASSUME_NONNULL_BEGIN

@interface STBaseViewController : UIViewController

@property(nonatomic, assign) CGFloat iosChangeFloat;
@property(nonatomic, assign) CGFloat tabbarHeight;
@property(nonatomic, strong) NSMutableArray *netRequest;
@property(nonatomic, strong) UIView *contentView;
@property(nonatomic, strong) STTopBar *topBar;

@property(nonatomic, assign) BOOL isNavHide;
@property(nonatomic, copy) NSString *stIdentifier;


//取消网络
- (void)cancelAllNetRequest;
- (void)leftBtnClick;
@end

NS_ASSUME_NONNULL_END
