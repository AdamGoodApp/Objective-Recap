//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Sphere.h"
#import "Earth.h"
#import "Soccer.h"
#import "NSString+Mahem.h"

int main()
{
    //Going through different Object Types in Objective-C
    
    //Basic Object types
    char character = 'a';
    float floatNumber = 2.3;
    int integer = 5;
    
    //Console logging object types
    NSLog(@"\n Integer is: %d, float is: %f, char is: %w", integer, floatNumber, character);
    
    //Strings
    NSString *string = @"Rais";
    NSString *stringConcat = [ [string stringByAppendingString:@"Adamo"] stringByAppendingString:@"what!!" ];
    [string uppercaseString];
    
    //Numbers
    NSNumber *number = @4;
    NSNumber *numberTwo = [[NSNumber alloc] initWithInt:25];
    
    //Arrays
    NSArray *array = @[@"Adam", @"Zack", @"Sabrina", @"Natasha", @2014];
    NSArray *arrayTwo = [[NSArray alloc] initWithObjects:@"Adam", @"Zack", @"Sabrina", @"Natasha", nil];
    NSMutableArray *arrayMutable = [[NSMutableArray alloc] initWithArray:array];
    [arrayMutable addObject:@2];
    [arrayMutable removeObject:@"Sabrina"];
    NSLog(@"Array element of index 2 is: %@", [arrayMutable objectAtIndex:3]);
    for (NSString *string in arrayMutable) {
        NSLog(@"%@", string);
    }
    
    //Objects
    NSDictionary *dictionary = @{@"name": @"adam", @"age": @25};
    NSDictionary *dictrionaryTwo = [[NSDictionary alloc] initWithObjectsAndKeys: @"Adam", @"name", @25, @"age", nil];
    NSMutableDictionary *dictionaryMutable = [[NSMutableDictionary alloc] initWithDictionary:dictionary];
    [dictionaryMutable setObject:@"1989" forKey:@"Year"];
    [dictionaryMutable removeObjectForKey:@"age"];
    NSLog(@"%@", [dictionaryMutable objectForKey:@"name"]);
    NSLog(@"Object element of key name is: %@", [dictionaryMutable objectForKey:@"name"]);
    for (NSString *string in [dictionaryMutable allKeys]) {
        NSLog(@"%@ : %@", string, [dictionaryMutable objectForKey:string]);
    }
    
    //Dynamic Types Objects
    id adam = nil;
    adam = @"Rais";
    
    
    //Classes
    
    Sphere *ball = [[Sphere alloc] init];
    
    [ball setCenter:5];
    [ball setRadius:25.34];
    
    
    //Useing @property to set area
    ball.area = 5;
    
    NSLog(@"my center is %d my radius is %f and my area is %d", [ball center], [ball radius], ball.area);
    
    //Earth is a child of the Sphere class. Notice how it inherits the area function. It remakes its own radius function.
    
    Earth *planet = [[Earth alloc] init];
    
    NSLog(@"Planet earth is %d and %f", planet.area, planet.radius);
    
    Soccer *football = [[Soccer alloc] init];
    
    football.sphere = ball;
    
    //Using categories
    NSString *stringAdam = @"Adam Rais";
    
    NSLog(@"%@", [stringAdam stringAppended]);
    
    return 0;
}
