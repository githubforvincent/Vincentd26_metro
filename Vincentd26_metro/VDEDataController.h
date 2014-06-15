//
//  VDEDataController.h
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VDETraveller.h"
#import "VDEStation.h"
#import "VDEMetroLine.h"

@interface VDEDataController : NSObject

@property (nonatomic,strong) VDETraveller  *theTraveller;
@property (nonatomic, strong) VDEMetroLine *theChateletMetroLine;

-(instancetype) initTheDataController;
-(void) createChateletMetroLine;

-(VDEStation*) stationForSection:(int)section forRow:(int)row;

@end
