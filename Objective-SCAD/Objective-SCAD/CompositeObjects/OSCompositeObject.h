//
//  OSCompositeObject.h
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/25/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSObject.h"

@interface OSCompositeObject : OSObject

@property (nonatomic, readonly) NSMutableArray *subObjects;

@end
