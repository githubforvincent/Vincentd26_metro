//
//  VDETableSuperViewController.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDETableSuperViewController.h"

@interface VDETableSuperViewController (){

   UINavigationController *theNavigationController;
}

@end

@implementation VDETableSuperViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//-----------------------------------------------------------------------------------------
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      UITabBarItem *theSecondButton = [self tabBarItem];
      [self.tabBarItem setTitle: @"Stations"];
      UIImage *image = [self resizeToSquare: [UIImage imageNamed:@"map.png"] ofSize:30];
      theSecondButton.image = image;
      
    }
  return self;

}

- (void)viewDidLoad
//-----------------------------------------------------------------------------------------
{
    [super viewDidLoad];
  
  UIView *mainView        = [[UIView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];

  // navigation bar initialisation
  theNavigationController = [[UINavigationController alloc] initWithRootViewController:self.theTableController];
  
  [mainView addSubview: [theNavigationController view]];
  
  [self setView:mainView];
}

- (void)didReceiveMemoryWarning
//-----------------------------------------------------------------------------------------
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark HELPER FONCTIONS

-(UIImage*) resizeToSquare: (UIImage*)image ofSize:(int)dimension {
  //------------------------------------------------------------
  CGFloat scale = [[UIScreen mainScreen] scale];
  CGSize  dimensions = {dimension, dimension};
  UIGraphicsBeginImageContextWithOptions(dimensions, NO, scale);
  [image drawInRect:CGRectMake(0, 0, dimension, dimension)];
  UIImage * theImageToReturn = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return theImageToReturn;
  
}


@end
