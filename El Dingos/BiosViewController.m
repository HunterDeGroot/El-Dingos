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
    
    vertSpace.constant = STATICDATALENGTH;
    
    [self adjustHeightConstr: vertSpace byView: hText withHeightConstraint:hHeightConstraint];
    [self adjustHeightConstr: vertSpace byView: cText withHeightConstraint:cHeightConstraint];
    [self adjustHeightConstr: vertSpace byView: gText withHeightConstraint:gHeightConstraint];
    
    vertSpace.constant += [UIScreen mainScreen].bounds.size.width * NUMPICS;
    [scroll setContentOffset:CGPointZero];
    [super viewWillAppear:animated];
}

-(void)adjustHeightConstr:(NSLayoutConstraint*) vSpace byView:(UITextView*) view withHeightConstraint:(NSLayoutConstraint*) constr{
    
    CGRect frame;
    CGSize sizeThatShouldFitTheContent;
    
    frame = view.frame;
    frame.size.height = view.contentSize.height;
    view.frame = frame;
    sizeThatShouldFitTheContent = [view sizeThatFits: view.frame.size];
    
    constr.constant = sizeThatShouldFitTheContent.height;
    vSpace.constant += constr.constant;
}
@end
