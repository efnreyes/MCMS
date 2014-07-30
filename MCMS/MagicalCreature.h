//
//  MagicalCreature.h
//  MCMS
//
//  Created by Efrén Reyes Torres on 7/29/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicalCreature : NSObject
@property NSString *name;
@property NSString *description;
@property UIImage *picture;

-(instancetype)initWithName:(NSString *)name description:(NSString *)description;

@end
