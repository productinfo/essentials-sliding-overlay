//
//  MenuView.m
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

#import "MenuView.h"

#define BUTTON_HEIGHT 44
#define PADDING 10

@interface MenuView ()
-(void)feedButtonTapped;
-(void)profileButtonTapped;
-(void)messagesButtonTapped;
-(void)friendsButtonTapped;
@end

@implementation MenuView

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *feedButton = [[UIButton alloc] initWithFrame:CGRectMake(PADDING, PADDING,
                                                                          frame.size.width - PADDING * 2, BUTTON_HEIGHT)];
        [feedButton setTitle:@"Feed" forState:UIControlStateNormal];
        [feedButton setBackgroundColor:[UIColor grayColor]];
        [feedButton addTarget:self action:@selector(feedButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:feedButton];
        
        UIButton *profileButton = [[UIButton alloc] initWithFrame:CGRectMake(PADDING, 60,
                                                                             frame.size.width - PADDING * 2, BUTTON_HEIGHT)];
        [profileButton setTitle:@"Profile" forState:UIControlStateNormal];
        [profileButton setBackgroundColor:[UIColor grayColor]];
        [profileButton addTarget:self action:@selector(profileButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:profileButton];
        
        UIButton *messagesButton = [[UIButton alloc] initWithFrame:CGRectMake(PADDING, 110,
                                                                             frame.size.width - PADDING * 2, BUTTON_HEIGHT)];
        [messagesButton setTitle:@"Messages" forState:UIControlStateNormal];
        [messagesButton setBackgroundColor:[UIColor grayColor]];
        [messagesButton addTarget:self action:@selector(messagesButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:messagesButton];
        
        UIButton *friendsButton = [[UIButton alloc] initWithFrame:CGRectMake(PADDING, 160,
                                                                             frame.size.width - PADDING * 2, BUTTON_HEIGHT)];
        [friendsButton setTitle:@"Friends" forState:UIControlStateNormal];
        [friendsButton setBackgroundColor:[UIColor grayColor]];
        [friendsButton addTarget:self action:@selector(friendsButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:friendsButton];
    }
    return self;
}

-(void)feedButtonTapped {
    [[self menuDelegate] showFeed];
}

-(void)profileButtonTapped {
    [[self menuDelegate] showProfile];
}

-(void)messagesButtonTapped {
    [[self menuDelegate] showMessages];
}

-(void)friendsButtonTapped {
    [[self menuDelegate] showFriends];
}

@end