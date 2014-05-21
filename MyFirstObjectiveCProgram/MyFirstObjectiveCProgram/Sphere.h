//
//  Sphere.h
//  MyFirstObjectiveCProgram
//
//  Created by Rais on 21/05/2014.
//  Copyright (c) 2014 treehouse. All rights reserved.
//

#import <Foundation/Foundation.h>

//Setting up Class, Setter and Getter
@interface Sphere : NSObject {
    int _center;
    float _radius;
}

-(void)setCenter:(int)center;
-(int)center;

-(void)setRadius:(float)radius;
-(float)radius;

// Using @property
@property(nonatomic) int area;

@end
