//
//  Person.h
//  xctest_demo
//
//  Created by cmcc on 2019/1/24.
//  Copyright © 2019年 cmcc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic,strong) NSString* name;
@property(nonatomic,strong) NSNumber* age;

-(NSInteger)setRandomNumInTen;
-(NSInteger)firstNum;
-(NSInteger)secondNum;
-(NSInteger)setNumWithTye:(NSInteger)type;
@end
