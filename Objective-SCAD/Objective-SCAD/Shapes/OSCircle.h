//
//  OSCircle.h
//  CatTop
//
//  Created by Jeffrey Camealy on 2/13/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSObject.h"
#import "OS2DShape.h"

@interface OSCircle : OSObject <OS2DShape>

- (id)initWithRadius:(float)radius resolution:(int)resolution;

@property float radius;
@property int resolution;

@end
