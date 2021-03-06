//
//  OSTypes.m
//  Objective-SCAD-Objects
//
//  Created by Jeffrey Camealy on 5/12/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSTypes.h"

OSColor color(float red, float green, float blue, float alpha) {
    OSColor color = {red, green, blue, alpha};
    return color;
}

OSColor redColor() {
    return color(1, 0, 0, 1);
}


NSString *scadBOOLString(BOOL b) {
    return b ? @"true" : @"false";
}
