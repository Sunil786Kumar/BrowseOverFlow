//
//  Person.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name,avatarURL;

-(id)initWithName:(NSString *)aName avatarLocation:(NSString *)location
{
    if((self=[super init]))
    {
     
        name = [aName copy];
        avatarURL = [[NSURL alloc]initWithString:location];
    
    }
    return self;
    
}

@end
