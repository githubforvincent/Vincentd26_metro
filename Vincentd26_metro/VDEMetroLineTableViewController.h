//
//  VDEMetroLineTableViewController.h
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VDEDataController.h"
#import "VDEAdminViewController.h"
#import "VDEPlanetDetailView.h"
#import "VDEDetailPlanetViewController.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface VDEMetroLineTableViewController : UITableViewController{

 AVAudioPlayer *myAudioPlayer;
}
@property (nonatomic,strong) VDEDataController *theDataController;

@end
