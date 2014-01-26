//
//  OSVector.m
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/26/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSVector.h"

@implementation OSVector

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        _vectorType = OSVTTranslate;
    }
    return self;
}

@end
