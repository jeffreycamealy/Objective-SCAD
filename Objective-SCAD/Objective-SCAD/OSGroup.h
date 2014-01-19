//
//  OSGroup.h
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSObject.h"

@interface OSGroup : OSObject

- (void)addObject:(OSObject *)object;
- (void)addObjects:(NSArray *)objects;

@end