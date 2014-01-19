//
//  OSGeometry.h
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>


#pragma mark - Data Structures

struct OSVector {
    CGFloat x;
    CGFloat y;
    CGFloat z;
};
typedef struct OSVector OSVector;


#pragma mark - Functions

OSVector v(float x, float y, float z);
NSString *scadBOOLString(BOOL b);
