//
//  StackOverflowManager.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "StackOverflowManager.h"
#import "Topic.h"

@implementation StackOverflowManager
@synthesize delegate,communicator;

-(void)setDelegate:(id<StackOverflowManagerDelegate>)newDelegate
{
    
    if(newDelegate && ![newDelegate conformsToProtocol:@protocol(StackOverflowManagerDelegate)])
    {
        
        [[NSException exceptionWithName:NSInvalidArgumentException reason:@"Delegate object does not conform to the delegate protocol" userInfo:nil]raise];
        
    }
    delegate = newDelegate;
    
}

-(void)fetchQuestionsOnTopic :(Topic *)topic
{
    
    [communicator searchForQuestionsWithTag:[topic tag]];
    
}

@end
