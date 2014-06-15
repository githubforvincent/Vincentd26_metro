//
//  VDEMetroLineTableViewController+DataSource.m
//  Vincentd26_metro
//
//  Created by Utilisation on 15/06/2014.
//  Copyright (c) 2014 Utilisation. All rights reserved.
//

#import "VDEMetroLineTableViewController+DataSource.h"

@implementation VDEMetroLineTableViewController (DataSource)


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  // Return the number of sections.

  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  // Return the number of rows in the section.
  return self.theDataController.theChateletMetroLine.metroStations.count;
  
}

 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//----------------------------------------------------------------------------------------
{
  
  
  
    NSString *CellIdentifier ;
  //int theCurrentSection = (int)indexPath.section;
  int theCurrentRow     = (int)indexPath.row;
  
  // get the data for the current indexPath
  VDEStation *theStationData = self.theDataController.theChateletMetroLine.metroStations[theCurrentRow];
  
  // set the cell identifier according to the jedi access rights
  if ( theStationData.jediAccessAllowed) {
    CellIdentifier = [NSString stringWithFormat:@"%@",@"lightSide"];
  } else {
    CellIdentifier = [NSString stringWithFormat:@"%@",@"darkSide"];
  }

  
   // Configure the cell...
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if(cell == nil) { // no reusable cell is free
    cell= [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    cell.backgroundColor            = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.2];
    
    cell.textLabel.textColor  = [UIColor whiteColor];
    cell.textLabel.text = theStationData.name;
      
  }
  
  if ( [CellIdentifier isEqualToString:@"lightSide"]){
    cell.imageView.image      = [UIImage imageNamed:@"leia.png"];
    if (self.theDataController.theTraveller.isOnjediSide) {
      cell.detailTextLabel.text       = @"Access allowed";
      cell.detailTextLabel.textColor  = [UIColor greenColor];
      cell.accessoryType              = UITableViewCellAccessoryDisclosureIndicator;
      cell.userInteractionEnabled     = YES;
    } else {
      cell.detailTextLabel.text = @"Access denied";
      cell.detailTextLabel.textColor  = [UIColor lightTextColor];
      cell.accessoryType              = UITableViewCellAccessoryNone;
      cell.userInteractionEnabled     = NO;
    }
    
  } else {
    cell.imageView.image      = [UIImage imageNamed:@"vador.png"];
    if (!(self.theDataController.theTraveller.isOnjediSide)) {
      cell.detailTextLabel.text       = @"Access allowed";
      cell.detailTextLabel.textColor  = [UIColor greenColor];
      cell.accessoryType              = UITableViewCellAccessoryDisclosureIndicator;
      cell.userInteractionEnabled     = YES;
    } else {
      cell.detailTextLabel.text = @"Access denied";
      cell.detailTextLabel.textColor  = [UIColor lightTextColor];
      cell.accessoryType              = UITableViewCellAccessoryNone;
      cell.userInteractionEnabled     = NO;
    }
    
  }

 return cell;
  
 }

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//----------------------------------------------------------------------
{
  return 60 ;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

@end
