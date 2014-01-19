//
//  OSTranslationGroup.h
//  ObjectiveSCAD
//
//  Created by Jeffrey Camealy on 12/23/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "OSGroup.h"

@interface OSTranslationGroup : OSGroup

+ (OSTranslationGroup *)groupWithTranslationVector:(OSVector)translationVector;

@property OSVector translationVector;

@end
