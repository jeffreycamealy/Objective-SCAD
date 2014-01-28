//
//  OSCompositeObject.m
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/25/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSCompositeObject.h"
#import "EXTScope.h"

@interface OSCompositeObject ()
@property (nonatomic, readwrite) NSMutableArray *subObjects;
@end


@implementation OSCompositeObject

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        _compositeType = OSCTUnion;
        [self buildSubObjects];
    }
    return self;
}


#pragma mark - Public API

- (void)buildSubObjects {
}


#pragma mark - Custom Getter

- (NSMutableArray *)subObjects {
    if (!_subObjects) {
        _subObjects = [NSMutableArray new];
    }
    
    return _subObjects;
}


#pragma mark - Override

- (NSString *)scad {
    NSMutableString *scad = [NSMutableString new];
    for (OSObject *obj in self.subObjects) {
        [scad appendFormat:@"\n%@", [obj scad]];
    }
    
    NSString *scadWithCompositeType = [self addCompositeTypeToScad:scad];
    return [self addTransformationsToScad:scadWithCompositeType];
}


#pragma mark - Private API

- (NSString *)addCompositeTypeToScad:(NSString *)scad {
    NSMutableString *scadWithCompositeType = [NSMutableString new];
    
    [scadWithCompositeType appendFormat:@"%@() {\n", [self keywordForCompositeType]];
    [scadWithCompositeType appendFormat:@"%@\n", scad];
    [scadWithCompositeType appendFormat:@"}"];
    
    return scadWithCompositeType;
}


//typedef enum {
//    OSCTUnion = 0,
//    OSCTDifference,
//    OSCTHull,
//    OSCTIntersection,
//    OSCTMinkowski
//} OSCompositeType;

- (NSString *)keywordForCompositeType {
    switch (self.compositeType) {
        case OSCTUnion:
            return @"union";
            
        case OSCTDifference:
            return @"difference";
            
        case OSCTHull:
            return @"hull";
            
        case OSCTIntersection:
            return @"intersection";
            
        case OSCTMinkowski:
            return @"minkowski";
            
        default:
            break;
    }
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
