//
//  ListViewControllerDataSource.m
//  DayX
//
//  Created by Michael Sacks on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListViewControllerDataSource.h"
#import "EntryController.h"

@implementation ListViewControllerDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [EntryController sharedInstance].entries.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell"];
    cell.textLabel.text = entry.titleProperty;
    
    return cell;
}

@end
