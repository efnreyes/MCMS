//
//  MagicalCreature.m
//  MCMS
//
//  Created by Efrén Reyes Torres on 7/29/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature
-(instancetype)initWithName:(NSString *)name description:(NSString *)description {
    self = [super init];
    self.name = name;
    self.description = description;
    return self;
}
@end
