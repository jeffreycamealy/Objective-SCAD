//
//  Cube.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSCube.h"

@implementation OSCube

#pragma mark - Init Method

- (id)initWithSizeVector:(OSVector)sizeVector {
    if (self = [super init]) {
        self.sizeVector = sizeVector;
        self.centered = YES;
    }
    return self;
}


#pragma mark - Overrides

- (NSString *)scad {
    return [NSString stringWithFormat:@"cube([%g,%g,%g], center=%@);",
            self.sizeVector.x, self.sizeVector.y, self.sizeVector.z, scadBOOLString(self.centered)];
}

- (id)duplicate {
    OSCube *cube = [OSCube new];
    cube.sizeVector = self.sizeVector;
    cube.centered = self.centered;
    return cube;
}


@end
