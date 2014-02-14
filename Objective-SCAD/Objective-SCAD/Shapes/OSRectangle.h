//
//  OSRectangle.h
//  CatTop
//
//  Created by Jeffrey Camealy on 2/13/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSObject.h"
#import "OS2DShape.h"

@interface OSRectangle : OSObject <OS2DShape>

- (id)initWithSize:(OSSize)size;

@property OSSize size;

@end
