//
//  STConstDef.h
//  Project
//
//  Created by steven on 2019/11/1.
//  Copyright © 2019 steven. All rights reserved.
//

#ifndef STConstDef_h
#define STConstDef_h

#define  kMainBGColor            RGBCOLOR(240,240,240)
#define  kNavBarColor            RGBCOLOR(255,104,0)
#define  kStatusBarColor         RGBCOLOR(255,104,0)
#define  kDarkTextColor          RGBCOLOR(76, 73, 72)
#define  kLightTextColor         RGBCOLOR(137, 137, 137)

#define  kClearColor             RGBACOLOR(0,0,0,0)
#define  kWhiteColor             RGBCOLOR(255, 255, 255)
#define  kLightGreenColor        RGBCOLOR(122, 205, 133)
#define  kDarkGreenColor         RGBCOLOR(55, 166, 76)
#define  kDarkGreenColor1        RGBCOLOR(12, 172, 134)//积分查询的积分颜色
#define  kBlueColor              RGBCOLOR(65, 157, 246)
#define  kGreenColor             RGBCOLOR(52, 208, 97)
#define  kRedColor               RGBCOLOR(203, 47, 31)
#define  kOrangeColor            RGBCOLOR(241, 115, 27)
#define  kLigthRedColor          RGBCOLOR(223, 62, 51)
#define  kDarkRedColor           RGBCOLOR(220, 30, 70)

/**字体字号配置**/
#define kFontHuge               [UIFont systemFontOfSize:27]
#define kFontHuge_b             [UIFont boldSystemFontOfSize:27]
#define kFontSuper              [UIFont systemFontOfSize:20]
#define kFontSuper_b            [UIFont boldSystemFontOfSize:20]
#define kFontLarge_2            [UIFont systemFontOfSize:19]
#define kFontLarge_2_b          [UIFont boldSystemFontOfSize:19]
#define kFontLarge_1            [UIFont systemFontOfSize:15]
#define kFontLarge_1_b          [UIFont boldSystemFontOfSize:15]
#define kFontNormalBold         [UIFont boldSystemFontOfSize:14]
//#define kFontNormal             [UIFont systemFontOfSize:Phone_WidthProportion(14)]
#define kFontNormal             [UIFont systemFontOfSize:14]
#define kFontMiddle             [UIFont systemFontOfSize:13]
#define kFontMiddleBold         [UIFont boldSystemFontOfSize:13]
#define kFontSmall              [UIFont systemFontOfSize:12]
#define kFontSmallBold          [UIFont boldSystemFontOfSize:12]
#define kFontTiny               [UIFont systemFontOfSize:11]
#define kFontTinyBold           [UIFont boldSystemFontOfSize:11]
#define kFontMini               [UIFont systemFontOfSize:10]
#define kFontMiniBold           [UIFont boldSystemFontOfSize:10]

#define kNavHeight              kAdjustLength(148)
#define kTabBarHeight           kAdjustLength(160)
#define kTopFrame               CGRectMake(0, 0, kScreen_Width, kNavHeight+self.iosChangeFloat)

#endif /* STConstDef_h */
