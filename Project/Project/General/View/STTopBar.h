//
//  STTopBar.h
//  Project
//
//  Created by steven on 2019/10/31.
//  Copyright © 2019 steven. All rights reserved.
//

#import "STBaseView.h"

#define kButtonEdgeInsetsLeft               15
#define kBackButtonEdgeInsetsLeft           10
//#define kNavColor  RGBCOLOR(255, 104, 0)
#define kNavColor  [UIColor redColor]

NS_ASSUME_NONNULL_BEGIN

@interface STTopBar : STBaseView

@property (nonatomic, copy) NSString *navTitle;
@property (nonatomic, readonly) UIButton *btnLeft;
@property (nonatomic, strong) UIButton *btnRight;

- (void)setLetfTitle:(NSString *)title;
- (void)setRightTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
