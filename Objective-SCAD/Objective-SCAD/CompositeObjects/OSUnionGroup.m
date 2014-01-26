//
//  OSUnionGroup.m
//  StrollerHook
//
//  Created by Jeffrey Camealy on 1/20/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSUnionGroup.h"

@implementation OSUnionGroup

#pragma mark - Override

- (NSString *)scad {
    return scad_union(^(NSMutableString *string) {
        for (OSObject *obj in self.subObjects) {
            [string appendFormat:@"\n%@", [obj scad]];
        }
    });
}


#pragma mark - Private API

NSString *scad_union(void(^subScad)(NSMutableString *string)) {
    NSMutableString *string = [NSMutableString new];
    
    [string appendFormat:@"union() {"];
    subScad(string);
    [string appendFormat:@"\n}"];
    
    return string;
}

@end
