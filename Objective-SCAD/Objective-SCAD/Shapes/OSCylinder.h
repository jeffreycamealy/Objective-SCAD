//
//  OSCylinder.h
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/23/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSObject.h"

@interface OSCylinder : OSObject

- (id)initWithRadius:(float)radius height:(float)height;
- (id)initWithDiameter:(float)diameter height:(float)height;

@property float height;
@property float radius;

@end
