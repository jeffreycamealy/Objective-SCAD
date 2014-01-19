//
//  ObjectiveSCAD.m
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/24/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "ObjectiveSCAD.h"
#import "OSObject.h"

@implementation ObjectiveSCAD

+ (void)scadObjects:(NSArray *)objects {
    NSMutableString *string = [NSMutableString new];
    for (id obj in objects) {
        [string appendString:[obj scad]];
        [string appendString:@"\n\n"];
    }
    
    exportString(string);
}


#pragma mark - Private API

void exportString(NSString *string) {
    NSError *error = nil;
    [string writeToFile:@"file.scad" atomically:YES encoding:NSUTF8StringEncoding error:&error];
    if (error) NSLog(@"Errors: %@\n", error);
    NSLog(@"Output directory: %@", [[NSFileManager new] currentDirectoryPath]);
}

@end
