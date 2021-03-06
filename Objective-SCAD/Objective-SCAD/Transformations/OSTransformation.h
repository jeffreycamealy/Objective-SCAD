//
//  OSTransformation.h
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/27/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

// Possible Transformations:
//
// Scale
// Resize
// Rotate
// Translate
// Mirror
// Multmatrix
// Color

@interface OSTransformation : NSObject

- (NSString *)transformScad:(NSString *)scad;

@end
