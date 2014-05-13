//
//  OSColorTransformation.h
//  Objective-SCAD-Objects
//
//  Created by Jeffrey Camealy on 5/12/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSTransformation.h"
#import "OSTypes.h"

@interface OSColorTransformation : OSTransformation

@property OSColor color;

+ (id)transformationWithColor:(OSColor)color;

@end
