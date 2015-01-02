//
//  BiosViewController.m
//  El Dingos
//
//  Created by Hunter DeGroot on 12/20/14.
//  Copyright (c) 2014 Hunter DeGroot. All rights reserved.
//

#import "BiosViewController.h"

@interface BiosViewController ()
@end

@implementation BiosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated {
    [hText setContentOffset:CGPointZero];
    [cText setContentOffset:CGPointZero];
    [gText setContentOffset:CGPointZero];
    [super viewWillAppear:animated];
}

@end
