//
//  MockStackOverflowManagerDelegate.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "MockStackOverflowManagerDelegate.h"
#import "Topic.h"

@implementation MockStackOverflowManagerDelegate
@synthesize fetchError;

-(void)fetchingQuestionsOnTopic:(Topic *)topic failedWithError:(NSError *)error
{
    
    self.fetchError = error;
    
}

@end
