//
//  OSHullGroup.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSHullGroup.h"

@implementation OSHullGroup

#pragma mark - Override

- (NSString *)scad {
    return hull(^(NSMutableString *string) {
        for (OSObject *obj in self.subObjects) {
            [string appendFormat:@"\n%@", [obj scad]];
        }
    });
}

NSString *hull(void(^subScad)(NSMutableString *string)) {
    NSMutableString *string = [NSMutableString new];
    
    [string appendFormat:@"hull() {"];
    subScad(string);
    [string appendFormat:@"\n}"];
    
    return string;
}

@end
