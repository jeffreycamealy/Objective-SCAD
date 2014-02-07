//
//  OSGeometry.h
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OSVectorTransformation;


#pragma mark - Data Structures

typedef struct {
    CGFloat x;
    CGFloat y;
    CGFloat z;
} OSVector;

typedef struct {
    CGFloat x;
    CGFloat y;
} OSPoint;


#pragma mark - Functions

OSVector v(float x, float y, float z);
OSPoint pt(float x, float y);
NSString *scadBOOLString(BOOL b);


#pragma mark - Convenience

OSVectorTransformation *rotate(float x, float y, float z);
OSVectorTransformation *translate(float x, float y, float z);
