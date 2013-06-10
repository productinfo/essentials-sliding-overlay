//
//  FeedViewController.m
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

#import "FeedViewController.h"

@implementation FeedViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Feed"];
}

-(IBAction)viewStoryPressed:(id)sender {
    UIViewController *vc = [UIViewController new];
    [vc setTitle:@"Item Detail"];
    [[vc view] setBackgroundColor:[UIColor whiteColor]];
    
    [[self navigationController] pushViewController:vc animated:YES];
}

@end