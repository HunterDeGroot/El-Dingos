//
//  BiosViewController.h
//  El Dingos
//
//  Created by Hunter DeGroot on 12/20/14.
//  Copyright (c) 2014 Hunter DeGroot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BiosViewController : UIViewController {
    __weak IBOutlet UITextView *hText;
    __weak IBOutlet UITextView *cText;
    __weak IBOutlet UITextView *gText;
    __weak IBOutlet UIScrollView *scroll;
    __weak IBOutlet NSLayoutConstraint *hHeightConstraint;
    __weak IBOutlet NSLayoutConstraint *cHeightConstraint;
    __weak IBOutlet NSLayoutConstraint *gHeightConstraint;
    __weak IBOutlet NSLayoutConstraint *sHeightConstraint;
    __weak IBOutlet NSLayoutConstraint *viewWidth;
    __weak IBOutlet NSLayoutConstraint *vertSpace;
}

@end
