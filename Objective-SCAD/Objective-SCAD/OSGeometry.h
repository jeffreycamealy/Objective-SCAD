//
//  OSGeometry.h
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>


#pragma mark - Data Structures

typedef struct {
    CGFloat x;
    CGFloat y;
    CGFloat z;
} OSVector;


#pragma mark - Functions

OSVectorTransformation v(float x, float y, float z);
NSString *scadBOOLString(BOOL b);
