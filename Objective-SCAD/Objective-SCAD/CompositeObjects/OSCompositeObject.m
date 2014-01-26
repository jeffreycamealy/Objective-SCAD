//
//  OSCompositeObject.m
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/25/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSCompositeObject.h"

@interface OSCompositeObject ()
@property (nonatomic, readwrite) NSMutableArray *subObjects;
@end


@implementation OSCompositeObject

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        _compositeType = OSCTUnion;
    }
    return self;
}


#pragma mark - Custom Getter

- (NSMutableArray *)subObjects {
    if (_subObjects) {
        _subObjects = [NSMutableArray new];
    }
    
    return _subObjects;
}


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
