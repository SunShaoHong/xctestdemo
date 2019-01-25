//
//  Person.m
//  xctest_demo
//
//  Created by cmcc on 2019/1/24.
//  Copyright © 2019年 cmcc. All rights reserved.
//

#import "Person.h"

@implementation Person

-(NSInteger)setRandomNumInTen{
     return arc4random()%10;
}
-(NSInteger)firstNum{
    NSLog(@"firstNum....");
    return 1;
}
-(NSInteger)secondNum{
    NSLog(@"SecondNum....");
    return 2;
}
-(NSInteger)setNumWithTye:(NSInteger)type{
    switch (type) {
        case 1:
            NSLog(@"first!");
            return 1;
        case 2:
            NSLog(@"second!");
            return 2;
        case 3:
            NSLog(@"third!");
            return 3;
        default:
            NSLog(@"fourth!");
            return 0;
    }
}
@end
