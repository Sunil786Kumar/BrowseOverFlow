//
//  QuestionCreationTests.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "QuestionCreationTests.h"
#import "StackOverflowManager.h"
#import "Topic.h"
#import "MockStackOverflowCommunicator.h"
#import "StackOverflowManagerDelegate.h"

@implementation QuestionCreationTests
{

    @private
    StackOverflowManager *mgr;

}

-(void)setUp
{
    
    mgr = [[StackOverflowManager alloc]init];
    
}

-(void)tearDown
{
    
    mgr = nil;
    
}

-(void)testNonConformingObjectCannotBeDelegate
{
    
    STAssertThrows(mgr.delegate = (id<StackOverflowManagerDelegate>)[NSNull null],@"NSNull should not be used as the delegate as doesn't conform to the delegate protocol");
    
}

-(void)testConformingObjectCanBeDelegate
{
    
    id<StackOverflowManagerDelegate> delegate = [[MockStackOverflowManagerDelegate alloc]init];
    
    STAssertNoThrow(mgr.delegate = delegate, @"Object conforming to the delegate protocol should be used as the delegate");
    
}

-(void)testManagerAcceptNilAsADelegate
{
    
    STAssertNoThrow(mgr.delegate = nil, @"It should be acceptable to use nil as an object's delegate");
    
}

-(void)testAskingForQuestionsMeansRequestingData
{
    
    MockStackOverflowCommunicator *communicator = [[MockStackOverflowCommunicator alloc]init];
    mgr.communicator = communicator;
    
    Topic *topic = [[Topic alloc]initWithName:@"iPhone" tag:@"iPhone"];
    [mgr fetchQuestionsOnTopic:topic];
    STAssertTrue([communicator wasAskedToFetchQuestions], @"The communicator should need to fetch data");
    
}

-(void)testErrorReturnedToDeleteIsNotErrorNotifiedByCommunicator
{
    
    MockStackOverflowManagerDelegate *delegate = [[MockStackOverflowManagerDelegate alloc]init];
    mgr.delegate = delegate;
    
    
}

@end
