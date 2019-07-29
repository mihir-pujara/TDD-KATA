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
    if (delimiter.length > 0) {
        total = [self add:numberString delimiters:[[NSOrderedSet alloc] initWithObject:delimiter]];
    }
    return total;
}

- (NSInteger)add:(NSString *)numberString delimiters:(NSOrderedSet *)delimiters {
    NSInteger total = 0;
    if ([delimiters count] == 1) {
        numberString = [numberString stringByReplacingOccurrencesOfString:@"\n" withString:[delimiters firstObject]];
        NSArray *numbers = [numberString componentsSeparatedByString:[delimiters firstObject]];
        total = [self addNumbers:numbers];
    } else {
        numberString = [numberString stringByReplacingOccurrencesOfString:@"\n" withString:[delimiters firstObject]];
        for (NSInteger index = 1; index < [delimiters count]; index++) {
            numberString = [numberString stringByReplacingOccurrencesOfString:[delimiters objectAtIndex:index] withString:[delimiters firstObject]];
        }
        NSArray *numbers = [numberString componentsSeparatedByString:[delimiters firstObject]];
        total = [self addNumbers:numbers];
    }
    return total;
}

- (NSInteger)addNumbers:(NSArray *)numbers {
    NSInteger total = 0;
    if ([numbers count] >= 2) {
        for (id number in numbers) {
            if ([number integerValue] <= 1000) {
                total += [number integerValue];
            }
        }
    }
    return total;
}

@end
