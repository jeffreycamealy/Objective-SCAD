//
//  OSCompositeObject.h
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/25/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSObject.h"

typedef enum {
    OSCTUnion = 0,
    OSCTDifference,
    OSCTHull,
    OSCTIntersection,
    OSCTMinkowski
} OSCompositeType;


@interface OSCompositeObject : OSObject

@property (nonatomic, readonly) NSMutableArray *subObjects;
@property OSCompositeType compositeType; // Defaul OSCTUnion

///
/// Do not call directly.  Subclasses may override.
///
- (void)buildSubObjects;

@end
