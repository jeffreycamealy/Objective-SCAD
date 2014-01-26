//
//  OSVector.h
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/26/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    OSVTTranslate = 0,
    OSVTRotate
} OSVectorType;

#warning Make a Transformation Objects.  Subclasses can be anything from Tranformations Section on wiki


@interface OSVector : NSObject

@property OSVectorType vectorType; // Default: OSVTTranslate;

@property float x;
@property float y;
@property float z;

@end
