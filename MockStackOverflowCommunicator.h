//
//  MockStackOverflowCommunicator.h
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowCommunicator.h"

@interface MockStackOverflowCommunicator : StackOverflowCommunicator

-(BOOL)wasAskedToFetchQuestions;

@end
