//
//  OSColorTransformation.m
//  Objective-SCAD-Objects
//
//  Created by Jeffrey Camealy on 5/12/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSColorTransformation.h"

@implementation OSColorTransformation

+ (id)transformationWithColor:(OSColor)color {
    OSColorTransformation *transformation = [OSColorTransformation new];
    transformation.color = color;
    return transformation;
}


#pragma mark - Override

- (NSString *)transformScad:(NSString *)scad {
    NSMutableString *transformedScad = [NSMutableString new];
    
    [transformedScad appendFormat:@"color([%g, %g, %g, %g]) {\n", self.color.red, self.color.green, self.color.blue, self.color.alpha];
    [transformedScad appendFormat:@"%@\n", scad];
    [transformedScad appendFormat:@"}\n"];
    
    return transformedScad;
}

@end
