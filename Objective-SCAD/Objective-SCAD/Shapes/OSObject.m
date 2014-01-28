//
//  OSObject.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSObject.h"
#import "OSVectorTransformation.h"

@interface OSObject ()
@property (nonatomic, readwrite) NSMutableArray *transformations;
@end


@implementation OSObject

#pragma mark - Public API

- (NSString *)scad {
    return @"";
}


#pragma mark - Private API

- (NSString *)addTransformationsToScad:(NSString *(^)())scad {
    return [self addTransformations:[self.transformations mutableCopy] toScad:scad];
}

- (NSString *)addTransformations:(NSMutableArray *)transformations toScad:(NSString *(^)())scad {
    if (transformations.count == 0) return scad();
    
    OSVectorTransformation *transformation = (OSVectorTransformation *)transformations.firstObject;
    [transformations removeObjectAtIndex:0];
    
    return [self addTransformations:transformations
                             toScad:^NSString *{
                                 [transformation transformScad:scad];
                             }];
}


#pragma mark - Custom Getter

- (NSMutableArray *)transformations {
    if (!_transformations) {
        _transformations = [NSMutableArray new];
    }
    
    return _transformations;
}

@end
