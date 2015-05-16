//
//  DetailViewController.h
//  DayX
//
//  Created by Michael Sacks on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Entry *entry;

@end
