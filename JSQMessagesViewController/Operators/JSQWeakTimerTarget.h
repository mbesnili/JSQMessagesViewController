//
//  JSQWeakTimerTarget.h
//  JSQMessages
//
//  Created by mbesnili on 16/08/2017.
//  Copyright © 2017 Hexed Bits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSQWeakTimerTarget : NSObject

- (instancetype)initWithTarget:(id)target selector:(SEL)selector;

@end
