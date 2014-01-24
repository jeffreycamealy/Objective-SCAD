//
//  OSDifferenceGroup.m
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/23/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSDifferenceGroup.h"

@implementation OSDifferenceGroup

#pragma mark - Override

- (NSString *)scad {
    return difference(^(NSMutableString *string) {
        for (OSObject *obj in self.subObjects) {
            [string appendFormat:@"\n%@", [obj scad]];
        }
    });
}


#pragma mark - Private API

NSString *difference(void(^subScad)(NSMutableString *string)) {
    NSMutableString *string = [NSMutableString new];
    
    [string appendFormat:@"difference() {"];
    subScad(string);
    [string appendFormat:@"\n}"];
    
    return string;
}

@end
