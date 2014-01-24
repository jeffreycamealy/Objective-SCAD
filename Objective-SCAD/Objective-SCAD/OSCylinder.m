//
//  OSCylinder.m
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/23/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSCylinder.h"

@implementation OSCylinder

- (NSString *)scad {
    return [NSString stringWithFormat:@"cylinder(h = %g, r = %g, center = true);", self.height, self.radius];
}

@end
