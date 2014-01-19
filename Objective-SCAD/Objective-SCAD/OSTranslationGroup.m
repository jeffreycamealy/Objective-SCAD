//
//  OSTranslationGroup.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSTranslationGroup.h"

@implementation OSTranslationGroup

#pragma mark - Override

- (NSString *)scad {
    return translate(self.translationVector, ^(NSMutableString *string) {
        for (OSObject *obj in self.subObjects) {
            [string appendFormat:@"\n%@", [obj scad]];
        }
    });
}

- (id)duplicate {
    OSTranslationGroup *translationGroup = [OSTranslationGroup new];
    translationGroup.translationVector = self.translationVector;
    
    for (OSObject *obj in self.subObjects) {
        [translationGroup.subObjects addObject:[obj duplicate]];
    }
    
    return translationGroup;
}


#pragma mark - Private API

NSString *translate(OSVector translation, void(^subScad)(NSMutableString *string)) {
    NSMutableString *string = [NSMutableString new];
    
    [string appendFormat:@"translate([%g, %g, %g]) {", translation.x, translation.y, translation.z];
    subScad(string);
    [string appendFormat:@"\n}"];
    
    return string;
}

@end
