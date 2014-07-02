//
//  OSRotationalExtrusion.h
//  CatTop
//
//  Created by Jeffrey Camealy on 2/13/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSObject.h"

@protocol OS2DShape;

@interface OSRotationalExtrusion : OSObject

//- (id)initWith2DShape:(id<OS2DShape>)shape resolution:(int)resolution;
- (id)initWith2DShape:(OSObject *)shape resolution:(int)resolution;

@property OSObject *shape;
@property int resolution;

@end
