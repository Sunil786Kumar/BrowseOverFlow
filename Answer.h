//
//  Answer.h
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Answer : NSObject

@property (getter = isAccepted)BOOL accepted;

@property (nonatomic,retain) NSString *text;
@property (nonatomic,retain) Person *person;
@property (nonatomic,assign) NSInteger score;

-(NSComparisonResult)compare:(Answer *)otherAnswer;

@end
