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
    
    imageView.animationImages=[NSArray arrayWithObjects:
                                            [UIImage imageNamed:@"home1.jpg"],
                                            [UIImage imageNamed:@"home2.jpg"],
                                            [UIImage imageNamed:@"home3.jpg"],
                                            [UIImage imageNamed:@"home4.jpg"],
                                            [UIImage imageNamed:@"home5.jpg"],
                                            [UIImage imageNamed:@"home6.jpg"],
                                            [UIImage imageNamed:@"home7.jpg"], nil];
    
    imageView.animationDuration= [imageView.animationImages count] * 10.0;
    imageView.animationRepeatCount=0;
    [imageView startAnimating];
    [self.view addSubview:imageView];

    NSTimer *timer = [NSTimer   timerWithTimeInterval: imageView.animationDuration/ [imageView.animationImages count]
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
        imageView.alpha = 0.0;
    }];
    [UIView animateWithDuration:1.0 animations:^{
        imageView.alpha = 1.0;
    }];
}

@end
