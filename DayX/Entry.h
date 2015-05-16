//
//  Entry.h
//  DayX
//
//  Created by Michael Sacks on 5/16/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (strong, nonatomic) NSString *titleProperty;
@property (strong, nonatomic) NSString *bodyProperty;
@property (strong, nonatomic) NSDate *timeProperty;

@end
