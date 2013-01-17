//
//  Question.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "Question.h"
#import "Answer.h"

@implementation Question
@synthesize  date,title,score;


-(id)init
{
    
    if((self=[super init]))
    {
        answerSet = [[NSMutableSet alloc]init];
    }
    return  self;
    
}

-(void)addAnswer:(Answer *)answer
{
    
    [answerSet addObject:answer];

}

-(NSArray *)answers
{
    
    return [[answerSet allObjects]sortedArrayUsingSelector:@selector(compare:)];
    
}

-(NSDate *)date
{
    
    return [NSDate date];
    
}

@end
