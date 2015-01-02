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
    CGRect frame = hText.frame;
    frame.size.height = hText.contentSize.height;
    hText.frame = frame;
    CGSize sizeThatShouldFitTheContent = [hText sizeThatFits: hText.frame.size];
    hHeightConstraint.constant = sizeThatShouldFitTheContent.height;
    
    frame = cText.frame;
    frame.size.height = cText.contentSize.height;
    cText.frame = frame;
    sizeThatShouldFitTheContent = [cText sizeThatFits: cText.frame.size];
    cHeightConstraint.constant = sizeThatShouldFitTheContent.height;

    frame = gText.frame;
    frame.size.height = gText.contentSize.height;
    gText.frame = frame;
    sizeThatShouldFitTheContent = [gText sizeThatFits: gText.frame.size];
    gHeightConstraint.constant = sizeThatShouldFitTheContent.height;

    [gText setContentOffset:CGPointZero];
    [super viewWillAppear:animated];
}

@end
