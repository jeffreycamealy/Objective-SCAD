//
//  OSGeometry.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSGeometry.h"

OSTransformation v(float x, float y, float z) {
    OSTransformation v = {x,y,z};
    return v;
}

NSString *scadBOOLString(BOOL b) {
    return b ? @"true" : @"false";
}