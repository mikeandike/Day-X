//
//  EntryController.m
//  DayX
//
//  Created by Michael Sacks on 5/16/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "EntryController.h"

@interface EntryController ()

@property (strong, nonatomic) NSArray *entries;

@end

@implementation EntryController

+ (instancetype)sharedInstance{
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
        sharedInstance.entries = [NSArray new];
    });
    
    return sharedInstance;
}

- (void)addEntry:(Entry *)entry{
    NSMutableArray *mutable = [self.entries mutableCopy];
    [mutable addObject:entry];
    self.entries = mutable;
}

- (void)removeEntry:(Entry *)entry{
    NSMutableArray *mutable = [self.entries mutableCopy];
    [mutable removeObject:entry];
    self.entries = mutable;
}

-(Entry *)createNewEntryWithTitle:(NSString *)title Body:(NSString *)body{
    
    Entry *newEntry = [Entry new];
    newEntry.titleProperty = title;
    newEntry.bodyProperty = body;
    newEntry.timeProperty = [NSDate new];
    
    [self addEntry:newEntry];
    
    return newEntry;
}


@end
