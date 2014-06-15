//
//  VDEAdminViewController+ConfigureSubviews.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEAdminViewController+ConfigureSubviews.h"


@implementation VDEAdminViewController (ConfigureSubviews)


-(void) configureSubviews {
  

#pragma mark buttons
  //--------------------------------------------------------------------------------------------------------

  self.theLightSideForceButton = [[UIButton alloc]init];
  self.theDarkSideForceButton  = [[UIButton alloc]init];
  
  [self.theLightSideForceButton addTarget:self
               action:@selector(lightIdentityChoice)
     forControlEvents:UIControlEventTouchUpInside];
  
  [self.theDarkSideForceButton addTarget:self
                                   action:@selector(darkIdentityChoice)
                         forControlEvents:UIControlEventTouchUpInside];
  
  //Configuratino is made on display according to traveller identity

  [[self view] addSubview:self.theLightSideForceButton];
  [[self view] addSubview:self.theDarkSideForceButton];
  

  
}

@end
