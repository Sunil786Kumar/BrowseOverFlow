//
//  Answer.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "Answer.h"

@implementation Answer
@synthesize accepted,score;

-(NSComparisonResult)compare:(Answer *)otherAnswer
{
    
    if(accepted && !(otherAnswer.accepted))
    {
        
        return NSOrderedAscending;
        
    }
    else if(!accepted && otherAnswer.accepted)
    {
        
        return NSOrderedDescending;
        
    }
    
    if(score > otherAnswer.score)
    {
        
        return NSOrderedAscending;
        
    }
    else if (score < otherAnswer.score)
    {
        
        return NSOrderedDescending;
        
    }
    else
    {
        
        return NSOrderedSame;
        
    }
        
}

@end
