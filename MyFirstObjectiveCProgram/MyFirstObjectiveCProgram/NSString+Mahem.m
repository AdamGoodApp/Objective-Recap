//
//  NSString+Mahem.m
//  MyFirstObjectiveCProgram
//
//  Created by Rais on 21/05/2014.
//  Copyright (c) 2014 treehouse. All rights reserved.
//

#import "NSString+Mahem.h"

@implementation NSString (Mahem)

-(NSString *)stringAppended {
    NSString *main = @"Hello";
    return [main stringByAppendingString:self];
}

@end
