//
//  OSCylinder.m
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/23/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSCylinder.h"

@implementation OSCylinder

#pragma mark - Init Method

- (id)initWithRadius:(float)radius height:(float)height {
    if (self = [super init]) {
        _radius = radius;
        _height = height;
    }
    return self;
}

- (NSString *)scad {
    NSString *scad = [NSString stringWithFormat:@"cylinder(h = %g, r = %g, center = true);", self.height, self.radius];
    return [self addTransformationsToScad:scad];
}

@end
