//
//  VDEAdminViewController.h
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VDEDataController.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface VDEAdminViewController : UIViewController{

 AVAudioPlayer *myAudioPlayer;
}

@property (nonatomic,strong) VDEDataController *theDataController;

@property (nonatomic,strong)UIButton *theLightSideForceButton;
@property (nonatomic,strong)UIButton *theDarkSideForceButton;



@end
