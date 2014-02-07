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

OSPoint pt(float x, float y) {
    OSPoint pt = {x,y};
    return pt;
}

NSString *scadBOOLString(BOOL b) {
    return b ? @"true" : @"false";
}


#pragma mark - Convenience

OSVectorTransformation *rotate(float x, float y, float z) {
    OSVector degreeVector = v(radToDeg(x), radToDeg(y), radToDeg(z));
    OSVectorTransformation *transformation = [OSVectorTransformation transformationWithVector:degreeVector type:OSVTTRotate];
    return transformation;
}

OSVectorTransformation *translate(float x, float y, float z) {
    OSVectorTransformation *transformation = [OSVectorTransformation transformationWithVector:v(x, y, z) type:OSVTTTranslate];
    return transformation;
}

OSVectorTransformation *scaleUniform(float x) {
    OSVectorTransformation *transformation = [OSVectorTransformation transformationWithVector:v(x, x, x) type:OSVTTScale];
    return transformation;
}




