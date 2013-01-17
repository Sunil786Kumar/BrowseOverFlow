//
//  MockStackOverflowManagerDelegate.h
//  BrowseOverFlow
//
//  Created by Sunil Kumar on 17/01/13.
//  Copyright (c) 2013 Sunil Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowManagerDelegate.h"

@interface MockStackOverflowManagerDelegate : NSObject<StackOverflowManagerDelegate>

@property (strong) NSError *fetchError;


@end
