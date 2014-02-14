//
//  OSGeometry.h
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OSVectorTransformation;

#pragma mark - Macros

#define degToRad(x) x*M_PI/180
#define radToDeg(x) x*180/M_PI


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

typedef struct {
    CGFloat width;
    CGFloat heigth;
} OSSize;


#pragma mark - Functions

OSVector v(float x, float y, float z);
OSPoint pt(float x, float y);
OSSize sz(float width, float height);
NSString *scadBOOLString(BOOL b);


#pragma mark - Convenience

OSVectorTransformation *rotate(float x, float y, float z); // Radians
OSVectorTransformation *translate(float x, float y, float z);
OSVectorTransformation *scaleUniform(float x);

































