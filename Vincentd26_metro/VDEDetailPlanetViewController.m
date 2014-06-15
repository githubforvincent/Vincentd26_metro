//
//  VDEDetailPlanetViewController.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEDetailPlanetViewController.h"
#import "VDEMetroLineTableViewController.h"

@interface VDEDetailPlanetViewController () {
  
  UIImageView *thePlanetImageBackgroundView;
  
  UIImageView *theVisitedPlanetPhoto;
  UILabel     *thePlanetName;
  
  BOOL        fromTable;
  
}
@end

@implementation VDEDetailPlanetViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//----------------------------------------------------------------------
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
     

    }
    return self;
}

- (void)viewDidLoad
//----------------------------------------------------------------------
{
 
  [super viewDidLoad];
  
  fromTable = YES;
  
  UIView *theView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
  self.view = theView;
  
  thePlanetImageBackgroundView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"backGroundImage"]];
  thePlanetImageBackgroundView.frame = theView.frame;
  
  [self.view addSubview:thePlanetImageBackgroundView];
  
  [self displayTheSubViewsWithOrientation:[[UIApplication sharedApplication] statusBarOrientation]];

  [[self navigationItem] setTitle:self.theStationToDisplay.name];
  
  fromTable = NO;
}

- (void)didReceiveMemoryWarning
//----------------------------------------------------------------------
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) viewWillDisappear:(BOOL)animated{
  //----------------------------------------------------------------------
  // Come back to the table to avoid a come back directly from the admin screen
  
  NSLog(@"test come back from detail planet");
  [self.navigationController popViewControllerAnimated:YES];

  
}

-(void) displayTheSubViewsWithOrientation:(UIInterfaceOrientation) currentOrientation {

  // Screen size calculations
  //----------------------------------------------------------------------------------------

  
  int theViewWidth, theViewHeight;
  
  if (currentOrientation == UIInterfaceOrientationLandscapeLeft || currentOrientation==UIInterfaceOrientationLandscapeRight) {
    theViewWidth  = [[UIScreen mainScreen] bounds].size.height;
    theViewHeight = [[UIScreen mainScreen] bounds].size.width;
  } else {
    theViewWidth  = [[UIScreen mainScreen] bounds].size.width;
    theViewHeight = [[UIScreen mainScreen] bounds].size.height;
  }
  
  
  thePlanetName = [[UILabel alloc]init];
  thePlanetName.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
  thePlanetName.textColor = [UIColor whiteColor];
  thePlanetName.textAlignment = NSTextAlignmentCenter;
  [thePlanetName setFrame:CGRectMake(0,100,theViewWidth, 60)];
  thePlanetName.text = [NSString stringWithFormat:@"%@",self.theStationToDisplay.name];
  
 
  
   theVisitedPlanetPhoto = [[UIImageView alloc ] initWithImage:[UIImage imageNamed:self.theStationToDisplay.imageName]];
  [self resizeToSquare:[theVisitedPlanetPhoto image] ofSize:theViewWidth-150];
    [theVisitedPlanetPhoto setFrame:CGRectMake(75,200,theViewWidth-150, theViewWidth-150)];
  
  [[self view] addSubview:thePlanetName];
  [[self view] addSubview:theVisitedPlanetPhoto];
  
  
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
