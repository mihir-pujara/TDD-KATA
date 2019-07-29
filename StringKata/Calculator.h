//
//  Calculator.h
//  StringKata
//
//  Created by Mihir Pujara on 29/07/19.
//  Copyright © 2019 Mihir Pujara. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

- (NSInteger)add:(NSString *)numberString;
- (NSInteger)add:(NSString *)numberString delimiter:(NSString *)delimiter;

@end

NS_ASSUME_NONNULL_END
