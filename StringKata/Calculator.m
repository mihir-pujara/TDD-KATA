//
//  Calculator.m
//  StringKata
//
//  Created by Mihir Pujara on 29/07/19.
//  Copyright © 2019 Mihir Pujara. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (NSInteger)add:(NSString *)numberString {
    NSInteger total = 0;
    total = [self add:numberString delimiter:@","];
    return total;
}

- (NSInteger)add:(NSString *)numberString delimiter:(NSString *)delimiter {
    NSInteger total = 0;
    numberString = [numberString stringByReplacingOccurrencesOfString:@"\n" withString:delimiter];
    NSArray *numbers = [numberString componentsSeparatedByString:delimiter];
    if ([numbers count] >= 2) {
        for (id number in numbers) {
            if ([number integerValue] < 1000) {
                total += [number integerValue];
            }
        }
    }
    return total;
}

@end
