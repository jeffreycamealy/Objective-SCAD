//
//  OSObject.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSObject.h"

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
    for (OSVector *vector in self.transformations) {
        <#statements#>
    }
}


#pragma mark - Custom Getter

- (NSMutableArray *)transformations {
    if (!_transformations) {
        _transformations = [NSMutableArray new];
    }
    
    return _transformations;
}

@end
