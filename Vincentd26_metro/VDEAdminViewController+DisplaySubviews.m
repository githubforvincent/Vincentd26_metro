//
//  VDEAdminViewController+DisplaySubviews.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEAdminViewController+DisplaySubviews.h"

@implementation VDEAdminViewController (DisplaySubviews)


-(void) displayTheSubViewsWithOrientation:(UIInterfaceOrientation) currentOrientation {
  //---------------------------------------------------------------------------------------------
  
  

  // Screen size calculations
  //----------------------------------------------------------------------------------------
  int theViewWidth, theViewHeight;
  
  if (currentOrientation == UIInterfaceOrientationLandscapeLeft ||currentOrientation==UIInterfaceOrientationLandscapeRight) {
    theViewWidth  = [[UIScreen mainScreen] bounds].size.height;
    theViewHeight = [[UIScreen mainScreen] bounds].size.width;
  } else {
    theViewWidth  = [[UIScreen mainScreen] bounds].size.width;
    theViewHeight = [[UIScreen mainScreen] bounds].size.height;
  }
  
#pragma mark buttons
  int thelightButtonX = 0;
  int thelightButtonY = (theViewHeight/2)-70;
  int thelightButtonWidth = theViewWidth;
  int thelightButtonHeight = 60;
  
   [self.theLightSideForceButton setFrame:CGRectMake(thelightButtonX,thelightButtonY,thelightButtonWidth, thelightButtonHeight)];
  
  int theDarktButtonX = 0;
  int theDarktButtonY = (theViewHeight/2)+40;
  int theDarktButtonWidth = theViewWidth;
  int theDarkButtonHeight = 60;
  
  // changing the buttons appearance 
  
  [self.theDarkSideForceButton setFrame:CGRectMake(theDarktButtonX,theDarktButtonY,theDarktButtonWidth, theDarkButtonHeight)];
  if ( self.theDataController.theTraveller.isOnjediSide) {
    self.theLightSideForceButton.backgroundColor          = [UIColor whiteColor];
    [self.theLightSideForceButton  setTitle:@"I'm on the light side" forState:UIControlStateNormal];
    [self.theLightSideForceButton  setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.theLightSideForceButton.enabled = NO;
    
    self.theDarkSideForceButton.backgroundColor          = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    [self.theDarkSideForceButton  setTitle:@"I want to be on the dark side" forState:UIControlStateNormal];
    [self.theDarkSideForceButton  setTitleColor:[UIColor lightTextColor] forState:UIControlStateNormal];
    self.theDarkSideForceButton.enabled = YES;
    
  } else {
    self.theLightSideForceButton.backgroundColor          = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    [self.theLightSideForceButton  setTitle:@"I want to be on the light side" forState:UIControlStateNormal];
    [self.theLightSideForceButton  setTitleColor:[UIColor lightTextColor] forState:UIControlStateNormal];
    self.theLightSideForceButton.enabled = YES;
    
    self.theDarkSideForceButton.backgroundColor          = [UIColor whiteColor];;
    [self.theDarkSideForceButton  setTitle:@"I'm on the dark side" forState:UIControlStateNormal];
    [self.theDarkSideForceButton  setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.theDarkSideForceButton.enabled = NO;
  }
  
}



@end
