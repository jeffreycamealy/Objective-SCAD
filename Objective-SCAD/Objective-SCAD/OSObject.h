//
//  OSObject.h
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSGeometry.h"

@interface OSObject : NSObject

/**
 * Subclasses can override
 *    - default implementation returns scad of all subObjects
 */
- (NSString *)scad;

/**
 * Subclasses should override
 *    - default implementation returns: nil
 */
- (id)duplicate;

/**
 * Initialized MutableArray that holds all subObjects of 
 *    the object.
 */
@property NSMutableArray *subObjects;

@end
