//
//  Topic.h
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 16/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Question;

@interface Topic : NSObject

@property (readonly) NSString *name,*tag;

-(id)initWithName:(NSString *)newName tag:(NSString *)tag;

-(NSArray *)recentQuestions;
-(void)addQuestion:(Question *)question;

@end
