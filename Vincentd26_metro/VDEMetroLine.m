//
//  VDECMetroLine.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEMetroLine.h"

@implementation VDEMetroLine



-(instancetype )initWithStations: (NSArray*)arrayOfStations {
  
  self= [super init];
  if (self) {
    
    _metroStations = arrayOfStations;
  }
  
  
  return self;
}

@end
