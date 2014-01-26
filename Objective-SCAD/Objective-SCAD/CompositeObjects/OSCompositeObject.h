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
    OSCTIntersection
} OSCompositeType;

#warning Make subclasses instead?  It just feels like I'm breaking the rules.  Why do all of these types need to know about one another?  Tisk tisk.


@interface OSCompositeObject : OSObject

@property (nonatomic, readonly) NSMutableArray *subObjects;
@property OSCompositeType compositeType; // Defaul OSCTUnion

@end
