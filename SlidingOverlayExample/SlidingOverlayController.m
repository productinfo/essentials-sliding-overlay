//
//  SlidingOverlayController.m
//  Sliding Overlay Example
//
//  Created by Chris Grant on 17/01/2013.
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

#import "SlidingOverlayController.h"
#import "OverlayNavigationController.h"
#import "MenuView.h"

#import "FeedViewController.h"
#import "MessagesTableViewController.h"
#import "ProfileViewController.h"
#import "FriendsTableViewController.h"

@interface SlidingOverlayController () <MenuDelegate, OverlayDelegate> {
    SEssentialsSlidingOverlay *_slidingOverlay;
    
    OverlayNavigationController *_feedNavController;
    OverlayNavigationController *_profileNavController;
    OverlayNavigationController *_messagesNavController;
    OverlayNavigationController *_friendsNavController;
    
    UIViewController *_activeViewController;
}
@end

@implementation SlidingOverlayController

-(void)viewDidLoad {
    [super viewDidLoad];
  
    _slidingOverlay = [[SEssentialsSlidingOverlay alloc] initWithFrame:self.view.bounds andToolbar:NO];
    [_slidingOverlay setUnderlaySizeType:SEssentialsUnderlayPixelSize];
    [_slidingOverlay setUnderlayRevealAmount:250];
    [[self view] addSubview:_slidingOverlay];
    
    MenuView *menuView = [[MenuView alloc] initWithFrame:_slidingOverlay.underlay.bounds];
    [menuView setMenuDelegate:self];
    [[_slidingOverlay underlay] addSubview:menuView];
    
    // Set up the navigation controllers.
    _feedNavController = [[OverlayNavigationController alloc] initWithRootViewController:[[FeedViewController alloc] initWithNibName:@"FeedViewController" bundle:nil]];
    [_feedNavController setOverlayDelegate:self];
    
    _profileNavController = [[OverlayNavigationController alloc] initWithRootViewController:[[ProfileViewController alloc] initWithNibName:@"ProfileViewController" bundle:nil]];
    [_profileNavController setOverlayDelegate:self];
    
    _messagesNavController = [[OverlayNavigationController alloc] initWithRootViewController:[MessagesTableViewController new]];
    [_messagesNavController setOverlayDelegate:self];
    
    _friendsNavController = [[OverlayNavigationController alloc] initWithRootViewController:[FriendsTableViewController new]];
    [_friendsNavController setOverlayDelegate:self];
    
    // Show the feed navigation controller initially.
    [self showController:_feedNavController andToggleMenu:NO];
}

-(void)showController:(UIViewController*)controller andToggleMenu:(BOOL)shouldToggleMenu {
    if(_activeViewController != controller) {
        for (UIView *subview in [[_slidingOverlay overlay] subviews]) {
            if ([subview respondsToSelector:@selector(removeFromSuperview)]) {
                [subview removeFromSuperview];
            }
        }
        [[_slidingOverlay overlay] addSubview:controller.view];
        
        _activeViewController = controller;
    }
    
    if(shouldToggleMenu) {
        [self toggleMenu];
    }
}

-(void)showFeed {
    [self showController:_feedNavController andToggleMenu:YES];
}

-(void)showProfile {
    [self showController:_profileNavController andToggleMenu:YES];
}

-(void)showMessages {
    [self showController:_messagesNavController andToggleMenu:YES];
}

-(void)showFriends {
    [self showController:_friendsNavController andToggleMenu:YES];
}

-(void)toggleMenu {
    [_slidingOverlay toggleUnderlayAnimated:YES];
}

@end