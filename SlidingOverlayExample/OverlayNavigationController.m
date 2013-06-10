//
//  OverlayNavigationController.m
//  Sliding Overlay Example
//
//  Created by Chris Grant on 21/01/2013.
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

#import "OverlayNavigationController.h"

@interface OverlayNavigationController ()

-(void)toggleMenuPressed;

@end

@implementation OverlayNavigationController

-(id)initWithRootViewController:(UIViewController *)rootViewController {
    if(self = [super initWithRootViewController:rootViewController]) {
        UIBarButtonItem *menu = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                 style:UIBarButtonItemStylePlain
                                                                target:self
                                                                action:@selector(toggleMenuPressed)];
        [[rootViewController navigationItem] setLeftBarButtonItem:menu];
    }
    return self;
}

-(void)toggleMenuPressed {
    [[self overlayDelegate] toggleMenu];
}

@end