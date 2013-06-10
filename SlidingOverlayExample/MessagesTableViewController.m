//
//  MessagesTableViewController.m
//  Sliding Overlay Example
//
//  Created by Chris Grant on 22/01/2013.
//  
//  Copyright 2013 Scott Logic
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "MessagesTableViewController.h"

@implementation MessagesTableViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Messages"];
}

#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return section == 0 ? @"Unread" : @"Read";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    if(indexPath.section == 0) {
        [[cell textLabel] setText:[NSString stringWithFormat:@"Unread Message %i", indexPath.row]];
    }
    else {
        [[cell textLabel] setText:[NSString stringWithFormat:@"Read Message %i", indexPath.row]];
        [[cell textLabel] setTextColor:[UIColor grayColor]];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc = [UIViewController new];
    [vc setTitle:@"Message Detail"];
    [[vc view] setBackgroundColor:[UIColor whiteColor]];
    
    [[self navigationController] pushViewController:vc animated:YES];
}

@end