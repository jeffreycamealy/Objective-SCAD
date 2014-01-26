//
//  OSRotationGroup.m
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/23/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSRotationGroup.h"

@implementation OSRotationGroup

#pragma mark - Init Method

+ (id)groupWithRotationVector:(OSVector)rotationVector {
    OSRotationGroup *rotationGroup = [OSRotationGroup new];
    rotationGroup.rotationVector = rotationVector;
    
    return rotationGroup;
}

#pragma mark - Override

- (NSString *)scad {
    return rotation(self.rotationVector, ^(NSMutableString *string) {
        for (OSObject *obj in self.subObjects) {
            [string appendFormat:@"\n%@", [obj scad]];
        }
    });
}


#pragma mark - Private API

NSString *rotation(OSVector rotationVector, void(^subScad)(NSMutableString *string)) {
    NSMutableString *string = [NSMutableString new];
    
    [string appendFormat:@"rotate([%g, %g, %g]) {", rotationVector.x, rotationVector.y, rotationVector.z];
    subScad(string);
    [string appendFormat:@"\n}"];
    
    return string;
}

@end
