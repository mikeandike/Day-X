//
//  DetailViewController.m
//  DayX
//
//  Created by Michael Sacks on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextView *textField;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateWithEntry:self.entry];
}

- (IBAction)saveButtonTapped:(id)sender {
    if (self.entry) {
        self.entry.titleProperty = self.titleField.text;
        self.entry.bodyProperty = self.textField.text;
        self.entry.timeProperty = [NSDate date];
    }
    else{
        self.entry = [[EntryController sharedInstance] createNewEntryWithTitle:self.titleField.text Body:self.textField.text];
    }
    
    if ([self.entry.titleProperty isEqualToString:@""]) {
        self.entry.titleProperty = @"[Untitled]";
    }
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)clearButtonTapped:(id)sender {
    self.textField.text = @"";
    self.titleField.text = @"";
}

-(void)updateWithEntry:(Entry *)entry{
    self.titleField.text = entry.titleProperty;
    self.textField.text = entry.bodyProperty;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


@end
