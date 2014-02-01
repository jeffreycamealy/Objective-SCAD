//
//  OSGeometry.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSGeometry.h"
#import "OSVectorTransformation.h"

OSVector v(float x, float y, float z) {
    OSVector v = {x,y,z};
    return v;
}

NSString *scadBOOLString(BOOL b) {
    return b ? @"true" : @"false";
}


#pragma mark - Convenience

OSVectorTransformation *rotate(float x, float y, float z) {
    OSVectorTransformation *transformation = [OSVectorTransformation transformationWithVector:v(x, y, z) type:OSVTTRotate];
    return transformation;
}

OSVectorTransformation *translate(float x, float y, float z) {
    OSVectorTransformation *transformation = [OSVectorTransformation transformationWithVector:v(x, y, z) type:OSVTTTranslate];
    return transformation;
}