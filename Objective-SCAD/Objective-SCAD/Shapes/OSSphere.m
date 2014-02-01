//
//  OSSphere.m
//  StrollerHook
//
//  Created by Jeffrey Camealy on 1/20/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSSphere.h"

@implementation OSSphere

#pragma mark - Init Method

- (id)initWithRadius:(float)radius {
    if (self = [super init]) {
        _radius = radius;
    }
    return self;
}


#pragma mark - Override

- (NSString *)scad {
    NSString *scad = [NSString stringWithFormat:@"sphere(%g);", self.radius];
    return [self addTransformationsToScad:scad];
}

@end
