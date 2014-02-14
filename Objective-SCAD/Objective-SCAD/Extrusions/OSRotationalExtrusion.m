//
//  OSRotationalExtrusion.m
//  CatTop
//
//  Created by Jeffrey Camealy on 2/13/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSRotationalExtrusion.h"

@implementation OSRotationalExtrusion

#pragma mark - Init Method

- (id)initWith2DShape:(id<OS2DShape>)shape resolution:(int)resolution {
    if (self = [super init]) {
        _shape = (id)shape;
        _resolution = resolution;
    }
    return self;
}


#pragma mark - Override

- (NSString *)scad {
    NSMutableString *string = [NSMutableString new];
    [string appendFormat:@"rotate_extrude($fn=%i) {\n", self.resolution];
    [string appendString:[self.shape scad]];
    [string appendFormat:@"}"];
    
    return [self addTransformationsToScad:string];
}

@end
