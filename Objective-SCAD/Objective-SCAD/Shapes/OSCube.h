//
//  Cube.h
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSObject.h"


@interface OSCube : OSObject

- (id)initWithSizeVector:(OSVectorTransformation)sizeVector;

@property OSVectorTransformation sizeVector;
@property BOOL centered; // Default: YES

@end
