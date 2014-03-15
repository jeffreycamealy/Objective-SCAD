//
//  OSTaperedCylinder.h
//  TinyCompass
//
//  Created by Jeffrey Camealy on 3/15/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSObject.h"

@interface OSTaperedCylinder : OSObject

- (id)initWithHeight:(float)height baseRadius:(float)baseRadius topRadius:(float)topRadius;

@property float height;
@property float baseRadius;
@property float topRadius;

@end
