//
//  VDEDataController.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEDataController.h"

@interface VDEDataController () {
  NSMutableArray *arrayOfStations;
}

@end

@implementation VDEDataController

-(instancetype) initTheDataController {
  //------------------------------------------------------------------------------
  
  self= [super init];
  if (self) {
    
    // Traveller creation : default jedi Side
    _theTraveller = [[VDETraveller alloc] init];
    
    
 
  }
  return self;
}

-(void) createChateletMetroLine {
//------------------------------------------------------------------------------

  arrayOfStations = [[NSMutableArray alloc] init];
  
  NSArray *p_planetNames = @[@"Planet 1",
                             @"Planet 2",
                             @"Planet 3",
                             @"Planet 4",
                             @"Planet 5",
                             @"Planet 6",
                             @"Planet 7",
                             @"Planet 8",
                             @"Planet 9",
                             @"Planet 10",
                             @"Planet 11",
                             @"Planet 12",
                             @"Planet 13",
                             @"Planet 14'",
                             @"Planet 15",
                             @"Planet 16",
                             @"Planet 17",
                             @"Planet 18",
                             @"Planet 19",
                             @"Planet 20"];
  
  NSArray *p_planetJediAccess = @[@0,
                                  @1,
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(NO),
                                  @(NO),
                                  @(NO),
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(YES),
                                  @(YES)];
                                  

  
  for ( int p_iteration=0; p_iteration<20;p_iteration++) {
    
    VDEStation *newStation = [[VDEStation alloc]init];
    newStation.name        = p_planetNames[p_iteration];
    newStation.imageName   = [NSString stringWithFormat:@"planete-%d", p_iteration];
    newStation.jediAccess = (BOOL)![p_planetJediAccess[p_iteration] intValue];
    
    [arrayOfStations addObject: newStation];    
  }

  self.theChateletMetroLine = [[VDEMetroLine alloc] initWithStations:arrayOfStations];
  
}

-(VDEStation*) stationForSection:(int)section forRow:(int)row {
  //-------------------------------------------------------------
  
  return [self.theChateletMetroLine.metroStations objectAtIndex:row];
}



@end
