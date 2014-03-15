//
//  OSTaperedCylinder.m
//  TinyCompass
//
//  Created by Jeffrey Camealy on 3/15/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSTaperedCylinder.h"

@implementation OSTaperedCylinder

#pragma mark - Init Method

- (id)initWithHeight:(float)height baseRadius:(float)baseRadius topRadius:(float)topRadius {
    if (self = [super init]) {
        _height = height;
        _baseRadius = baseRadius;
        _topRadius = topRadius;
    }
    return self;
}

- (NSString *)scad {
    NSString *scad = [NSString stringWithFormat:@"cylinder(h = %g, r1 = %g, r2 = %g, center = true);", self.height, self.baseRadius, self.topRadius];
    return [self addTransformationsToScad:scad];
}
@end
