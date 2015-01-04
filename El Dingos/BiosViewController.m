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

-(void)viewWillAppear:(BOOL)animated {
    
    // Calculate the contents height change and apply to the vert space constraint
    CGRect frame = hText.frame;
    frame.size.height = hText.contentSize.height;
    hText.frame = frame;
    CGSize sizeThatShouldFitTheContent = [hText sizeThatFits: hText.frame.size];
    hHeightConstraint.constant = sizeThatShouldFitTheContent.height;
    vertSpace.constant += hHeightConstraint.constant;
    
    frame = cText.frame;
    frame.size.height = cText.contentSize.height;
    cText.frame = frame;
    sizeThatShouldFitTheContent = [cText sizeThatFits: cText.frame.size];
    cHeightConstraint.constant = sizeThatShouldFitTheContent.height;
    vertSpace.constant += cHeightConstraint.constant;

    frame = gText.frame;
    frame.size.height = gText.contentSize.height;
    gText.frame = frame;
    sizeThatShouldFitTheContent = [gText sizeThatFits: gText.frame.size];
    gHeightConstraint.constant = sizeThatShouldFitTheContent.height;
    vertSpace.constant += gHeightConstraint.constant;
    
    vertSpace.constant += 3 * [UIScreen mainScreen].bounds.size.width;
    [scroll setContentOffset:CGPointZero];
    [super viewWillAppear:animated];
}

@end
