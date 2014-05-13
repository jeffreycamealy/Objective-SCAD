//
//  OSSphere.h
//  StrollerHook
//
//  Created by Jeffrey Camealy on 1/20/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSObject.h"

@interface OSSphere : OSObject

- (id)initWithRadius:(float)radius;
- (id)initWithDiameter:(float)diameter;

@property float radius;

@end
