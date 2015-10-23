//
//  MusicTableViewController.h
//  El Dingos
//
//  Created by Hunter DeGroot on 12/20/14.
//  Copyright (c) 2014 Hunter DeGroot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIView.h>
#import <AVFoundation/AVFoundation.h>

@interface MusicTableViewController : UITableViewController {
    AVAudioPlayer *audioPlayer;
    NSArray *songs;
    NSInteger currentlyPlaying;
    NSTimer *timer;
    IBOutlet UITableView *tableView;
    __weak IBOutlet UIProgressView *p0;
    __weak IBOutlet UIProgressView *p1;
    __weak IBOutlet UIProgressView *p2;
    __weak IBOutlet UIProgressView *p3;
    __weak IBOutlet UIProgressView *p4;
    __weak IBOutlet UIProgressView *p5;
    __weak IBOutlet UIProgressView *p6;
    __weak IBOutlet UIProgressView *p7;
}

- (void) updateProgressInd:(NSInteger)ind toProg:(float) prog;
- (IBAction)play:(id)sender;

@end
