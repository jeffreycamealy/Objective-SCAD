//
//  OSObject.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSObject.h"

@implementation OSObject

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        _subObjects = [NSMutableArray new];
        [self buildSubObjects];
    }
    return self;
}

#pragma mark - Public API

- (NSString *)scad {
    NSMutableString *string = [NSMutableString new];
    
    for (id obj in self.subObjects) {
        [string appendString:[obj scad]];
        [string appendString:@"\n\n"];
    }
    
    return string;
}

- (id)duplicate {
    return nil;
}

- (void)buildSubObjects {
    
}

@end
