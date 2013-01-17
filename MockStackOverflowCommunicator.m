//
//  MockStackOverflowCommunicator.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "MockStackOverflowCommunicator.h"


@implementation MockStackOverflowCommunicator
{
    
    BOOL wasAskedToFetchQuestions;
    
}

-(void)searchForQuestionsWithTag:(NSString *)tag
{
    
    wasAskedToFetchQuestions = YES;
    
}
-(BOOL)wasAskedToFetchQuestions
{
    
    return wasAskedToFetchQuestions;
    
}

@end
