//
//  xctest_demoTests.m
//  xctest_demoTests
//
//  Created by cmcc on 2019/1/24.
//  Copyright © 2019年 cmcc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface xctest_demoTests : XCTestCase

@end

@implementation xctest_demoTests

/** 单元测试开始前调用 */
- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}
/** 单元测试结束前调用 */
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

/** 测试代码可以写到以test开头的方法中 并且test开头的方法左边会生成一个菱形图标，点击即可运行检测当前test方法内的代码 */
- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

/** 测试性能 */
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testPerformanceExampleSecond {
    // This is an example of a performance test case.
    [self measureBlock:^{
        NSTimeInterval startTime = CACurrentMediaTime();
        NSMutableArray* mutArray = [[NSMutableArray alloc]init];
        for (int i = 0; i< 9999; i++) {
            NSObject* object = [NSObject new];
            [mutArray addObject:object];
        }
        NSLog(@"时间差：%f",CACurrentMediaTime()- startTime);
    }];
}

//测试年龄
-(void)testPersonAge{
    Person* pp = [Person new];
    pp.age = [NSNumber numberWithInt:10];
    XCTAssert(pp.age<[NSNumber numberWithInt:110],@"年龄超过110-错误");
    XCTAssert(pp.age>[NSNumber numberWithInt:0],@"年龄为负数-错误");
}

//测试用例的命名均以test开头的
-(void)testFirstOne{
    Person* pp = [Person new];
    NSInteger aa = [pp setRandomNumInTen];
    XCTAssert(aa<10,@"错误-数据>10");
}

-(void)testFirstNum{
    Person* pp = [Person new];
    NSInteger first = [pp firstNum];
    XCTAssertEqual(first, 1);  //相等 通过
}

-(void)testSecondNum{
    Person* pp = [Person new];
    NSInteger second = [pp secondNum];
    XCTAssertEqual(second, 2);  //相等 通过
}

-(void)testtype{
    Person* pp = [Person new];
    NSInteger first = [pp setNumWithTye:1];
    XCTAssertEqual(first, 1);  //相等 通过
    
    NSInteger second = [pp setNumWithTye:2];
    XCTAssertEqual(second, 2);

    NSInteger third = [pp setNumWithTye:3];
    XCTAssertEqual(third, 3);
    
    NSInteger default1 = [pp setNumWithTye:0];
    XCTAssertEqual(default1, 0);
    
}
@end

//XCTAssertNil(a1, ...)为空判断，expression为空时通过
//XCTAssert(expression, ...)当expression值为TRUE时通过；
//XCTAssertTrue(expression, format...)当expression值为TRUE时通过；
//XCTAssertEqual(e1, e2, ...) e1 == e2通过；
//XCTAssertThrows(expression, format...)当expression抛出异常时通过；
//XCTAssertThrowsSpecific(expression, specificException, format...) 当expression抛出specificException异常时通过；



