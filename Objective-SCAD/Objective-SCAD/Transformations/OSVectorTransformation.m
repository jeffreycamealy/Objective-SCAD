//
//  OSVector.m
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/26/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSVectorTransformation.h"


@implementation OSVectorTransformation

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        _type = OSVTTTranslate;
    }
    return self;
}


#pragma mark - Public API

+ (id)transformationWithVector:(OSVector)vector type:(OSVectorTransformationType)type {
    OSVectorTransformation *vectorTransformation = [OSVectorTransformation new];
    vectorTransformation.vector = vector;
    vectorTransformation.type = type;
    return vectorTransformation;
}


#pragma mark - Override

- (NSString *)transformScad:(NSString *)scad {
    NSMutableString *transformedScad = [NSMutableString new];
    
    [transformedScad appendFormat:@"%@([%g, %g, %g]) {\n", [self keyworkForType], self.vector.x, self.vector.y, self.vector.z];
    [transformedScad appendFormat:@"%@\n", scad];
    [transformedScad appendFormat:@"}"];
    
    return transformedScad;
}

- (NSString *)keyworkForType {
    switch (self.type) {
        case OSVTTTranslate:
            return @"translate";
            
        case OSVTTRotate:
            return @"rotate";
            
        default:
            break;
    }
}

@end
