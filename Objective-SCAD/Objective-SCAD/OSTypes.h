//
//  OSTypes.h
//  Objective-SCAD-Objects
//
//  Created by Jeffrey Camealy on 5/12/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * OSColor
 * - All values are between 0 and 1.
 */
typedef struct {
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    CGFloat alpha;
} OSColor;

OSColor color(float red, float green, float blue, float alpha);

// BOOL String
NSString *scadBOOLString(BOOL b);