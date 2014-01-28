//
//  OSVector.h
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/26/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSTransformation.h"
#import "OSGeometry.h"

typedef enum {
    OSVTTTranslate = 0,
    OSVTTRotate
} OSVectorTransformationType;
//Scale
//Resize
//Rotate
//Translate
//Mirror
//Multmatrix
//Color

//#warning Make a Transformation Objects.  Subclasses can be anything from Tranformations Section on wiki

@interface OSVectorTransformation : OSTransformation

@property OSVectorTransformationType type; // Default: OSVTTTranslate;
@property OSVector vector;

@end
































