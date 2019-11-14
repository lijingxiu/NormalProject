//
//  STTopBar.m
//  Project
//
//  Created by steven on 2019/10/31.
//  Copyright © 2019 steven. All rights reserved.
//

#import "STTopBar.h"
@interface STTopBar ()
{
    UILabel *_titleLb;
}

@end
@implementation STTopBar
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

- (void)initView
{
    self.backgroundColor = kNavColor;
    
    UIView *navbarView = [[UIView alloc] initWithFrame:CGRectMake(0, self.iosChangeFloat, kScreen_Width, kNavHeight)];
    navbarView.backgroundColor = [UIColor clearColor];
    [self addSubview:navbarView];
    
    CGFloat segmentWidth = navbarView.width / 4;
    
    _titleLb = [[UILabel alloc] initWithFrame:CGRectMake(segmentWidth, 0, segmentWidth * 2, navbarView.height)];
    _titleLb.font = kFontLarge_2;
    _titleLb.textAlignment = NSTextAlignmentCenter;
    _titleLb.textColor = [UIColor blackColor];
    [navbarView addSubview:_titleLb];
    
    // 左按钮
    _btnLeft = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, segmentWidth, navbarView.height)];
    _btnLeft.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    _btnLeft.titleLabel.font = kFontLarge_1;
    _btnLeft.titleEdgeInsets = UIEdgeInsetsMake(0, kButtonEdgeInsetsLeft, 0, 0);
    _btnLeft.imageEdgeInsets = UIEdgeInsetsMake(13, kButtonEdgeInsetsLeft, 13, 55);
    _btnLeft.exclusiveTouch = YES;
    [_btnLeft setTitleColor:[UIColor blackColor]   forState:UIControlStateNormal];
    [navbarView addSubview:_btnLeft];

    // 右按钮
    _btnRight = [[UIButton alloc] initWithFrame:CGRectMake(kScreen_Width - segmentWidth-5, 0, segmentWidth, navbarView.height)];
    _btnRight.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    _btnRight.titleLabel.font = kFontLarge_1;
    _btnRight.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, kButtonEdgeInsetsLeft);
    _btnRight.exclusiveTouch = YES;
    [_btnRight setTitleColor:[UIColor blackColor]  forState:UIControlStateNormal];
    [navbarView addSubview:_btnRight];

    //line:
    UIView *line = [[UIView alloc] initLineWithFrame:CGRectMake(0, navbarView.height-1, kScreen_Width, 1) color:[UIColor colorWithHexString:@"f0f0f0"]];
    [navbarView addSubview:line];
}

- (void)setLetfTitle:(NSString *)title
{
    if (title == nil || ![title length]) {
        [_btnLeft setImage:[UIImage imageNamed:@"navback"] forState:UIControlStateNormal];
        _btnLeft.imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    [_btnLeft setTitle:title forState:UIControlStateNormal];
}

- (void)setRightTitle:(NSString *)title
{
    [_btnRight setTitle:title forState:UIControlStateNormal];
}

/**
 set方法-begin
 */
- (void)setNavTitle:(NSString *)navTitle{
    _navTitle = [navTitle copy];
    [_titleLb setText:_navTitle];
}
/**
 set方法-end
 */
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
