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

#pragma mark - Custom Getter

- (NSMutableArray *)subObjects {
    if (_subObjects) {
        _subObjects = [NSMutableArray new];
    }
    
    return _subObjects;
}

@end
