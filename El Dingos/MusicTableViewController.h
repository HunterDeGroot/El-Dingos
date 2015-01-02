//
//  MusicTableViewController.h
//  El Dingos
//
//  Created by Hunter DeGroot on 12/20/14.
//  Copyright (c) 2014 Hunter DeGroot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface MusicTableViewController : UITableViewController {
    AVAudioPlayer *audioPlayer;
    IBOutlet UITableView *tableView;
}

@end
