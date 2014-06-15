//
//  VDECMetroLine.h
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VDEMetroLine : NSObject

@property (nonatomic, strong) NSArray *metroStations;

-(instancetype )initWithStations: (NSArray*)arrayOfStations;

@end
