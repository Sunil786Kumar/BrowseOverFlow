//
//  StackOverflowManager.h
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowCommunicator.h"
#import "StackOverflowManagerDelegate.h"
@class Topic;

@interface StackOverflowManager : NSObject

@property (weak,nonatomic) id<StackOverflowManagerDelegate> delegate;
@property (strong)StackOverflowCommunicator *communicator;

-(void)fetchQuestionsOnTopic :(Topic *)topic;
@end
