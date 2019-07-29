//
//  CalculatorTests.m
//  StringKataTests
//
//  Created by Mihir Pujara on 29/07/19.
//  Copyright © 2019 Mihir Pujara. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Calculator.h"

@interface CalculatorTests : XCTestCase {
    Calculator *calc;
}

@end

@implementation CalculatorTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    calc = [[Calculator alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    calc = nil;
}

- (void)testAddEmptyString {
    NSInteger result = [calc add:@""];
    XCTAssertEqual(result, 0);
}

- (void)testAddOnePlusSix {
    NSInteger result = [calc add:@"6,1"];
    XCTAssertEqual(result, 7);
}

- (void)testAdd1Plus3Plus6 {
    NSInteger result = [calc add:@"6,1,3"];
    XCTAssertEqual(result, 10);
}

- (void)testAdd1Plus2Plus3WithNewLine {
    NSInteger result = [calc add:@"1\n2,3"];
    XCTAssertEqual(result, 6);
}

- (void)test1Plus2WithSemicolonAsDelimiter {
    NSInteger result = [calc add:@"//;\n1;2" delimiter:@";"];
    XCTAssertEqual(result, 3);
}

- (void)testAdd2Plus1001 {
    NSInteger result = [calc add:@"2,1001"];
    XCTAssertEqual(result, 2);
}

- (void)testAddWithMultipleLengthDelimiter {
    //[***]\n1***2***3
    NSInteger result = [calc add:@"//[***]\n1***2***3" delimiter:@"***"];
    XCTAssertEqual(result, 6);
}

@end
