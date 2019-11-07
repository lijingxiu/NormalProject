//
//  STBaseView.m
//  Project
//
//  Created by steven on 2019/10/31.
//  Copyright © 2019 steven. All rights reserved.
//

#import "STBaseView.h"

@implementation STBaseView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.iosChangeFloat = 20;
        if (@available(iOS 11.0, *)) {
          self.iosChangeFloat = UIApplication.sharedApplication.keyWindow.safeAreaInsets.top;
        }
    }
    self.backgroundColor = [UIColor clearColor];
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
