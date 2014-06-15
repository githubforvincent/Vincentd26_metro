//
//  VDEMetroLineTableViewController.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEMetroLineTableViewController.h"

@interface VDEMetroLineTableViewController ()
@end

@implementation VDEMetroLineTableViewController

- (id)initWithStyle:(UITableViewStyle)style
//--------------------------------------------------------
{
  self = [super initWithStyle:style];
  if (self) {
      
    UITabBarItem *theSecondButton = [self tabBarItem];
    [self.tabBarItem setTitle: @"Stations"];
    UIImage *image = [self resizeToSquare: [UIImage imageNamed:@"map.png"] ofSize:30];
    theSecondButton.image = image;
    
  }
  return self;
}

- (void)viewDidLoad
//--------------------------------------------------------
{
    [super viewDidLoad];
  
   [[self navigationItem] setTitle:@"The Planets"];

  
  
}

- (void)didReceiveMemoryWarning
//--------------------------------------------------------
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated {
  //--------------------------------------------------------
  [[self tableView] reloadData];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
  //----------------------------------------------------------------------
  NSInteger section = [indexPath section];
  NSInteger row = [indexPath row];
  
  [self playSound:@"airplane-fly-over-02a"];
  
  // initialize  the detail view controller -> task detail view
  VDEDetailPlanetViewController *theSelectePlanet = [[VDEDetailPlanetViewController alloc] init];

  theSelectePlanet.theStationToDisplay= [self.theDataController stationForSection:section forRow:row];
  
  //NSLog(@"slected name: %@", theSelectePlanet.theStationToDisplay.name);
  
  [[self navigationController] pushViewController: theSelectePlanet animated:YES];
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

-(void) playSound: (NSString*)fileName {
  //------------------------------------------------------------
 
  NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:fileName ofType: @"mp3"];
  NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
  myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
  myAudioPlayer.numberOfLoops = 0;
  [myAudioPlayer play];
  
}




@end
