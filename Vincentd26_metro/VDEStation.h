//
//  VDEStation.h
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VDEStation : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic,strong)  NSString *imageName;

@property (getter = jediAccessAllowed)    BOOL jediAccess;;

@end
