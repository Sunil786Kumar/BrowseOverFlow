//
//  Question.h
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Answer;

@interface Question : NSObject
{
    
    NSMutableSet *answerSet;
    
}
@property (nonatomic,readwrite) NSDate *date;
@property (nonatomic,readwrite) NSString *title;
@property (nonatomic,assign) NSInteger score;
@property (readonly) NSArray *answers;

-(void)addAnswer:(Answer *)answer;

@end
