//
//  TopicTests.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 16/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "TopicTests.h"
#import "Topic.h"
#import "Question.h"

@implementation TopicTests
{
    
    Topic *topic;
    
}

-(void)setUp
{

    topic = [[Topic alloc]initWithName:@"iPhone" tag:@"iPhone"];
    
}

-(void)tearDown
{
    
    topic = nil;
    
}

-(void)testForAListOfQuestions
{
    
    STAssertTrue([[topic recentQuestions] isKindOfClass:[NSArray class]],@"Topics should provide a list of recent questions");
    
}

-(void)testThatTopicExists
{

      Topic *newTopic = [[Topic alloc]initWithName:@"iPhone" tag:@"iPhone"];
      STAssertNotNil(newTopic, @"should be able to create a Topic instance");
    
}

-(void)testThatTopicCanBeNamed
{
    
    Topic *namedTopic = [[Topic alloc]initWithName:@"iPhone" tag:@"iPhone"];
    STAssertEqualObjects(namedTopic.name, @"iPhone", @"Topic should have the name I gave it");
    
}

-(void)testThatTopicHasATag
{
    
    Topic *taggedTopic = [[Topic alloc]initWithName:@"iPhone" tag:@"iPhone"];
    STAssertEqualObjects(taggedTopic.tag, @"iPhone", @"Topics need to have tags");
    
}

-(void)testForInitiallyEmptyQuestionList
{
    
    STAssertEquals([[topic recentQuestions]count], (NSUInteger)0, @"No Questions added yet,count should be zero");
    
}

-(void)testAddingAQuestionToTheList
{
    
    Question *question = [[Question alloc]init];
    [topic addQuestion:question];
    STAssertEquals([[topic recentQuestions]count], (NSUInteger)1, @"Add a question, and the count of questions should go up");
    
}

-(void)testQuestionsAreListedChronologically
{
    
    Question *q1 = [[Question alloc]init];
    q1.date = [NSDate distantPast];
    
    Question *q2 = [[Question alloc]init];
    q2.date = [NSDate distantFuture];
    
    [topic addQuestion:q1];
    [topic addQuestion:q2];
    
    NSArray *questions = [topic recentQuestions];
    
    Question *listedFirst = [questions objectAtIndex:0];
    Question *listedSecond = [questions objectAtIndex:1];
    
    STAssertEqualObjects([listedFirst.date laterDate:listedSecond.date], listedFirst.date, @"The later question should appear first in the list");
    
}

-(void)testLimitOfTwentyQuestions
{
    
    Question *q1 = [[Question alloc]init];
    for(NSInteger i=0;i < 25; i++)
    {
        
        [topic addQuestion:q1];
        
    }
    STAssertTrue([[topic recentQuestions]count ] < 21, @"There should never be more than twenty questions");
    
}

@end
