//
//  QuestionTests.m
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import "QuestionTests.h"
#import "Question.h"
#import "Answer.h"

@implementation QuestionTests
{
    
    Question *question;
    Answer *lowScore;
    Answer *highScore;
    
}

-(void)setUp
{
    
    question = [[Question alloc]init];
    question.date = [NSDate distantPast];
    question.title = @"Do iPhones also dream of electric sheep?";
    question.score = 42;
    
    Answer *accepted = [[Answer alloc]init];
    accepted.score = 1;
    accepted.accepted = YES;
    [question addAnswer:accepted];
    
    lowScore = [[Answer alloc]init];
    lowScore.score = 4;
    [question addAnswer:highScore];
    
}

-(void) tearDown
{
    
    question = nil;
    lowScore = nil;
    highScore = nil;
    
}

-(void)testQuestionCanHaveAnswersAdded
{
    
    Answer *myAnswer = [[Answer alloc]init];
    STAssertNoThrow([question addAnswer:myAnswer], @"Must be able to add answers");
    
}

-(void)testAcceptedAnswerIsFirst
{
    
    STAssertTrue([[question.answers objectAtIndex:0]isAccepted], @"Accepted answer comes first");
    
}

-(void)testHighScoreAnswerBeforeLow
{
    
    NSArray *answers = question.answers;
    NSInteger highIndex = [answers indexOfObject:highScore];
    NSInteger lowIndex = [answers indexOfObject:lowScore];
    STAssertTrue(highIndex < lowIndex, @"High-scoring answer comes first");
    
}
-(void)testQuestionHasADate
{
    
    NSDate *testDate = [NSDate distantPast];
    question.date = testDate;
    
    STAssertEqualObjects(question.date, testDate, @"Questions needs to provide its date");
    
}

-(void)testQuestionsKeepScore
{
    
    STAssertEquals(question.score, 42, @"Questions need a numberic score");
    
}

-(void)testQuestionHasATitle
{
    
    STAssertEqualObjects(question.title, @"Do iPhones also dream of electric sheep?", @"Question should know its title");
    
}
@end
