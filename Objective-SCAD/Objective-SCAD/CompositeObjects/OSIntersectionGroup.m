//
//  OSIntersectionGroup.m
//  StrollerHook
//
//  Created by Jeffrey Camealy on 1/20/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSIntersectionGroup.h"

@implementation OSIntersectionGroup

#pragma mark - Override

- (NSString *)scad {
    return intersection(^(NSMutableString *string) {
        for (OSObject *obj in self.subObjects) {
            [string appendFormat:@"\n%@", [obj scad]];
        }
    });
}


#pragma mark - Private API

NSString *intersection(void(^subScad)(NSMutableString *string)) {
    NSMutableString *string = [NSMutableString new];
    
    [string appendFormat:@"intersection() {"];
    subScad(string);
    [string appendFormat:@"\n}"];
    
    return string;
}

@end

































