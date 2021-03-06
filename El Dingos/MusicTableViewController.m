//
//  MusicTableViewController.m
//  El Dingos
//
//  Created by Hunter DeGroot on 12/20/14.
//  Copyright (c) 2014 Hunter DeGroot. All rights reserved.
//

#import "MusicTableViewController.h"
#import <UIKit/UIView.h>

@interface MusicTableViewController ()
@end

@implementation MusicTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    songs = @[@"%@/tt.m4a", @"%@/mrv.m4a", @"%@/chft.m4a", @"%@/nalr.m4a", @"%@/jsf.m4a", @"%@/kreemb.mp3", @"%@/jpj.mp3", @"%@/dt.mp3"];
    currentlyPlaying = -1;
    audioPlayer.numberOfLoops = -1;
    self.tableView.rowHeight = 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger row = indexPath.row;
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:songs[row], [[NSBundle mainBundle] resourcePath]]];
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    if(currentlyPlaying == row){
        [audioPlayer stop];
        [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated: YES];
        [self updateProgressInd:row toProg:0.01];
        currentlyPlaying = -1;
    }
    else {
        [[AVAudioSession sharedInstance]
        setCategory: AVAudioSessionCategoryPlayback
              error: nil];
        [audioPlayer play];
        [self play:nil];
        [self updateProgressInd:currentlyPlaying toProg:0.01];
        currentlyPlaying = row;
    }
}

- (IBAction)play:(id)sender {
    self->timer = [NSTimer scheduledTimerWithTimeInterval:0.20 target:self selector:@selector(updateProgressBar:) userInfo:nil repeats:YES];
}

- (void)updateProgressBar:(NSTimer *)timer {
    NSTimeInterval playTime = [self->audioPlayer currentTime];
    NSTimeInterval duration = [self->audioPlayer duration];
    float progress = playTime/duration;
    [self updateProgressInd:currentlyPlaying toProg:progress];
}

- (void)updateProgressInd:(NSInteger)ind toProg:(float) prog {
    if(!prog) prog = 0.01;
    switch (ind) {
        case 0:
            p0.progress = prog;
            break;
            
        case 1:
            p1.progress = prog;
            break;
            
        case 2:
            p2.progress = prog;
            break;
            
        case 3:
            p3.progress = prog;
            break;
            
        case 4:
            p4.progress = prog;
            break;
            
        case 5:
            p5.progress = prog;
            break;
        
        case 6:
            p6.progress = prog;
            break;
        
        case 7:
            p7.progress = prog;
            break;
            
        default:
            break;
    }
}

@end
