//
//  OSCircle.m
//  CatTop
//
//  Created by Jeffrey Camealy on 2/13/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSCircle.h"

@implementation OSCircle

#pragma mark - Init Method

- (id)initWithRadius:(float)radius resolution:(int)resolution {
    if (self = [super init]) {
        _radius = radius;
        _resolution = resolution;
    }
    return self;
}

- (NSString *)scad {
    NSString *scad =[NSString stringWithFormat:@"circle(%g, $fn=%i);",
                     self.radius, self.resolution];
    return [self addTransformationsToScad:scad];
}

@end
