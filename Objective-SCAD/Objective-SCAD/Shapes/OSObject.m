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

- (void)addTransformation:(OSTransformation *)transformation {
    [self.transformations addObject:transformation];
}


#pragma mark - Private API

- (NSString *)addTransformationsToScad:(NSString *)scad {
    return addTransformationsToScad([self.transformations mutableCopy], scad);
}

NSString *addTransformationsToScad (NSMutableArray *transformations, NSString *scad) {
    if (transformations.count == 0) return scad;
    
    // Dequeue
    OSVectorTransformation *transformation = (OSVectorTransformation *)transformations.firstObject;
    [transformations removeObjectAtIndex:0];
    
    NSString *plusOneTransformScad = [transformation transformScad:scad];
    
    return addTransformationsToScad(transformations, plusOneTransformScad);
}


#pragma mark - Custom Getter

- (NSMutableArray *)transformations {
    if (!_transformations) {
        _transformations = [NSMutableArray new];
    }
    
    return _transformations;
}

@end
