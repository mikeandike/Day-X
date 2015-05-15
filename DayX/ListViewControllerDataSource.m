//
//  ListViewControllerDataSource.m
//  DayX
//
//  Created by Michael Sacks on 5/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListViewControllerDataSource.h"

@implementation ListViewControllerDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell"];
    cell.textLabel.text = [NSString stringWithFormat:@"Entry %ld", indexPath.row + 1];
    
    return cell;
}

@end
