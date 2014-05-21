//
//  Sphere.m
//  MyFirstObjectiveCProgram
//
//  Created by Rais on 21/05/2014.
//  Copyright (c) 2014 treehouse. All rights reserved.
//

#import "Sphere.h"

@implementation Sphere

// Impleteing function for Sphere class
-(void)setCenter:(int)center {
    _center = center;
}

-(int)center {
    return _center;
}

-(void)setRadius:(float)radius {
    _radius = radius;
}

-(float)radius {
    return _radius;
}

@end
