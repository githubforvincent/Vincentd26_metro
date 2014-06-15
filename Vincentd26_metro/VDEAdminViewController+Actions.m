//
//  VDEAdminViewController+Actions.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEAdminViewController+Actions.h"

@implementation VDEAdminViewController (Actions)

-(void) lightIdentityChoice {
  self.theDataController.theTraveller.jediSide = YES;
  [self displayTheSubViewsWithOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
  [self playSound:@"Alors-je-suis-un-Jedi"];
  
}

-(void) darkIdentityChoice{
  self.theDataController.theTraveller.jediSide = NO;
  [self displayTheSubViewsWithOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
  [self playSound: @"Vador-Tu-dois-affronter-Vador"];
  
}



-(void) playSound: (NSString*)fileName {
  
  NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:fileName ofType: @"mp3"];
  NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
  myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
  myAudioPlayer.numberOfLoops = 0;
  [myAudioPlayer play];
  
}

@end
