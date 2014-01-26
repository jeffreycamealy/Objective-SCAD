//
//  OSGroup.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSGroup.h"

@implementation OSGroup

#pragma mark - Public API

+ (id)groupWithObjects:(NSArray *)objects {
    OSGroup *group = [self new];
    [group addObjects:objects];
    return group;
}

- (void)addObject:(OSObject *)object {
    [self.subObjects addObject:object];
}

- (void)addObjects:(NSArray *)someObjects {
    [self.subObjects addObjectsFromArray:someObjects];
}

@end

































