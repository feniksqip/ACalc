//
//  Solve.m
//  ACalculator
//
//  Created by Admin on 08/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Solve.h"

@implementation Solve


float addFunc(float x, float y) {
    return x + y;
}

float deductFunc(float x, float y) {
    return x - y;
}

float multiplyFunc(float x, float y) {
    return x * y;
}

float divideFunc(float x, float y) {
    if (y != 0) {
        return x / y;
    } else {
        return 0;
    }
}





@end
