//
//  VDEAppDelegate.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEAppDelegate.h"
#import "VDEMetroLineTableViewController.h"
#import "VDEAdminViewController.h"
#import "VDEDataController.h"
#import "VDETableSuperViewController.h"




@implementation VDEAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
  //Data controller creation and metro line construction
  //-----------------------------------------------------------------------------
  VDEDataController *theDataController = [[VDEDataController alloc] initTheDataController];
  [theDataController createChateletMetroLine];
  
  // building the table for the tab bar
  //-----------------------------------------------------------------------------
  VDEAdminViewController          *theAdminViewController       = [[VDEAdminViewController alloc]init];
  VDETableSuperViewController     *theSuperTableView            = [[VDETableSuperViewController alloc]init];
  VDEMetroLineTableViewController *theMetroTableViewController  = [[VDEMetroLineTableViewController alloc]init];
  
  theMetroTableViewController.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backGroundImage"]];
 
  UITabBarController *theTapBarController = [[UITabBarController alloc] init];
  
  // NSArray *theTableOfController = @[theAdminViewController ,theMetroTableViewController];
  NSArray *theTableOfController = @[theAdminViewController ,theSuperTableView];
  [theTapBarController setViewControllers:theTableOfController animated:YES];
  
  [self.window addSubview:theTapBarController.view];
  [self.window setRootViewController:theTapBarController];

  // setting the datacontrolelr for the views, so they can send messages to get data
  //-----------------------------------------------------------------------------
  theAdminViewController.theDataController      = theDataController;
  theMetroTableViewController.theDataController = theDataController;
  theSuperTableView.theTableController          = theMetroTableViewController;
  // NavBar for the table view
  //-----------------------------------------------------------------------------

  
  
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
