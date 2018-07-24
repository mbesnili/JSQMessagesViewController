//
//  JSQWeakTimerTarget.h
//  JSQMessages
//
//  Created by mbesnili on 16/08/2017.
//  Copyright © 2017 Hexed Bits. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JSQWeakTimerTarget : NSObject

- (instancetype)initWithTarget:(id)target selector:(SEL)selector;

@end

NS_ASSUME_NONNULL_END
