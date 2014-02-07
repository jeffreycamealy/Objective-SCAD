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
    OSVTTRotate,
    OSVTTScale
} OSVectorTransformationType;


@interface OSVectorTransformation : OSTransformation

@property OSVectorTransformationType type; // Default: OSVTTTranslate;
@property OSVector vector;

+ (id)transformationWithVector:(OSVector)vector type:(OSVectorTransformationType)type;

@end
































