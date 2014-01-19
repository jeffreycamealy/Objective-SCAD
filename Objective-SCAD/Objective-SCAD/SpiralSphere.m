//
//  SpiralSphere.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/24/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "SpiralSphere.h"
#import "OSCube.h"
#import "OSTranslationGroup.h"
#import "OSHullGroup.h"
#import "VTPG_Common.h"

#define OS_FLT_EPSILON 0.00001


@implementation SpiralSphere

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        [self buildSubObjects];
    }
    return self;
}


#pragma mark - Private API

- (void)buildSubObjects {
    [self.subObjects addObjectsFromArray:[self circleOfBlocks]];
}

- (NSArray *)circleOfBlocks {
    NSMutableArray *circleOfBlocks = [NSMutableArray new];
    
    // Constants
    const float circleRadius = 5;
    const float numSteps = 6;
    const float angleMax = M_PI*2;
    
    float radianStep = angleMax/numSteps;
    
    float hRatio = circleRadius/sinf(M_PI_2);
    for (float i = -angleMax; i <= angleMax+OS_FLT_EPSILON; i+=radianStep) {
        OSTranslationGroup *translationGroup = [OSTranslationGroup new];
        float y = hRatio*sinf(i);
        float x = sqrtf(powf(circleRadius, 2)-powf(y, 2));
        LOG_EXPR(i);
        LOG_EXPR(x);
        LOG_EXPR(y);
        LOG_EXPR(@"");
        translationGroup.translationVector = v(x, y, 0);
        
        // Add +x cube
        const float cubeSize = 0.4;
        OSCube *cube = [[OSCube alloc] initWithSizeVector:v(cubeSize, cubeSize, cubeSize)];
        [translationGroup addObject:cube];
        [circleOfBlocks addObject:translationGroup];
        
        // Add -x cube
        if (translationGroup.translationVector.x < OS_FLT_EPSILON) continue; // Skip if we're at ~ x==0
        OSTranslationGroup *flippedCubeTranslation = [translationGroup duplicate];
        flippedCubeTranslation.translationVector = v(-flippedCubeTranslation.translationVector.x,
                                                     flippedCubeTranslation.translationVector.y,
                                                     flippedCubeTranslation.translationVector.z);
        [circleOfBlocks addObject:flippedCubeTranslation];
    }
    
    return circleOfBlocks;
}

@end

































