//
//  VDEAdminViewController.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEAdminViewController.h"
#import "VDEAdminViewController+ConfigureSubviews.h"
#import "VDEAdminViewController+DisplaySubviews.h"
#import "VDEAdminViewController+Actions.h"

@interface VDEAdminViewController () {

  UIImageView *theAdminImageBackgroundView;

 
}

@end

@implementation VDEAdminViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//----------------------------------------------------------------------
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    UIView *theView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    self.view = theView;
        
    UITabBarItem *thefirstButton = [self tabBarItem];
    [self.tabBarItem setTitle: @"Force side"];
    UIImage *image = [self resizeToSquare: [UIImage imageNamed:@"gear.png"] ofSize:30];
    thefirstButton.image = image;
    
    
    UIView *mainView        = [[UIView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    [self setView:mainView];
    theAdminImageBackgroundView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"backGroundImage"]];
    theAdminImageBackgroundView.frame = mainView.frame;
    
    [self.view addSubview:theAdminImageBackgroundView];

    [self configureSubviews];
    
    
  }
  return self;
  
}


-(void) viewWillAppear:(BOOL)animated {
  //----------------------------------------------------------------------


  [self displayTheSubViewsWithOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
  
}

- (void)viewDidLoad
//----------------------------------------------------------------------
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning
//----------------------------------------------------------------------
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
