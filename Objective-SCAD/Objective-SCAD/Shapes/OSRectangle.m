//
//  OSRectangle.m
//  CatTop
//
//  Created by Jeffrey Camealy on 2/13/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSRectangle.h"

@implementation OSRectangle

#pragma mark - Init Method

- (id)initWithSize:(OSSize)size {
    if (self = [super init]) {
        _size = size;
    }
    return self;
}

- (NSString *)scad {
    NSString *scad =[NSString stringWithFormat:@"square([%g,%g], center=true);",
                     self.size.width, self.size.heigth];
    return [self addTransformationsToScad:scad];
}

@end
