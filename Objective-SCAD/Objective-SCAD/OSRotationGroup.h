//
//  OSRotationGroup.h
//  PhoneHolster
//
//  Created by Jeffrey Camealy on 1/23/14.
//  Copyright (c) 2014 bearMountain. All rights reserved.
//

#import "OSGroup.h"

@interface OSRotationGroup : OSGroup

+ (id)groupWithRotationVector:(OSVector)rotationVector;

@property OSVector rotationVector;

@end
