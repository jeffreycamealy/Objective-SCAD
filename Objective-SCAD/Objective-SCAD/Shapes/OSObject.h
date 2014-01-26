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

- (NSString *)scad;
@property (nonatomic, readonly) NSMutableArray *transformations;

- (NSString *)addTransformationsToScad:(NSString *(^)())scad;

@end
