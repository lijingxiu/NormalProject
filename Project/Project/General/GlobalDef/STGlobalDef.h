//
//  STGlobalDef.h
//  Project
//
//  Created by steven on 2019/10/14.
//  Copyright © 2019 steven. All rights reserved.
//

#ifndef STGlobalDef_h
#define STGlobalDef_h

#define IOSVersion              [[[UIDevice currentDevice] systemVersion] floatValue]
#define kScreen_Height          [[UIScreen mainScreen] bounds].size.height
#define kScreen_Width           [[UIScreen mainScreen] bounds].size.width
#define kDevice_iPhone_liuhai             CGSizeEqualToSize(CGSizeMake(375, 812), [[UIScreen mainScreen] bounds].size)|| CGSizeEqualToSize(CGSizeMake(414, 896), [[UIScreen mainScreen] bounds].size)
#define kStatusBarH             [UIApplication sharedApplication].statusBarFrame.size.height
#define kAdjustLength(x)        kScreen_Width*(x)/1080

#define WEAKSELF typeof(self) __weak weakSelf = self;
#define STRONGSELF __strong __typeof(weakSelf)strongSelf = weakSelf;


/**文件路径相关设置**/
#define kDocumentPath   [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]


#define kMainDomain @"http://shjxdemo.deepermobile.com:18807"
#endif /* STGlobalDef_h */
