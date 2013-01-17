//
//  PersonTests.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "PersonTests.h"
#import "Person.h"

@implementation PersonTests
{
    
    Person *person;
    
}
-(void)setUp
{
    
    person = [[Person alloc]initWithName:@"Graham Lee" avatarLocation:@"http://example.com/avatar.png"];
    
}

-(void)tearDown
{
    
    person = nil;
    
}

-(void)testThatPersonHasTheRightName
{
    
    STAssertEqualObjects(person.name, @"Graham Lee", @"expecting a person to provide its name");
    
}

-(void)testThatPersonHasAnAvatarURL
{
    
    NSURL *url = person.avatarURL;
    STAssertEqualObjects([url absoluteString], @"http://example.com/avatar.png", @"The Person's avatar should be represented by a URL");
    
}

@end
