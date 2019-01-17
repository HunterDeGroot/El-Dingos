//
//  HomeViewController.m
//  El Dingos
//
//  Created by Hunter DeGroot on 12/20/14.
//  Copyright (c) 2014 Hunter DeGroot. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@end

@implementation HomeViewController

- (void)viewDidLoad {
    
    imageView.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"home1"],
                                [UIImage imageNamed:@"home2"],
                                [UIImage imageNamed:@"home3"],
                                [UIImage imageNamed:@"home4"],
                                [UIImage imageNamed:@"home5"],
                                [UIImage imageNamed:@"home6"],
                                [UIImage imageNamed:@"home7"], nil];
    
    imageView.animationDuration = [imageView.animationImages count] * ROTATIONINTERVALTIME;
    imageView.animationRepeatCount = 0;
    [imageView startAnimating];
    [self.view addSubview:imageView];

    float interval = imageView.animationDuration/ [imageView.animationImages count];
    NSTimer *timer = [NSTimer   timerWithTimeInterval: interval
                                target:self
                                selector:@selector(onTimer)
                                userInfo:nil
                                repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    [timer fire];
    [super viewDidLoad];
    

}

-(void)onTimer{
    [UIView animateWithDuration:5.0 animations:^{
        self->imageView.alpha = 0.0;
    }];
    [UIView animateWithDuration:1.0 animations:^{
        self->imageView.alpha = 1.0;
    }];
}

@end
