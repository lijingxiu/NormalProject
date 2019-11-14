//
//  STRequest.h
//  Project
//
//  Created by steven on 2019/11/13.
//  Copyright © 2019 steven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class STRequest;

@interface STRequest : NSObject

//@property (nonatomic,copy) void (^STRequestSuccessBlock)(ST);
//@property (nonatomic,copy) CLRequestFailureBlock failureBlock;
@property (nonatomic,copy) void (^requestHashBlock)(NSString *);


@end

NS_ASSUME_NONNULL_END
