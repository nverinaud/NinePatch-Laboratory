//
//  ContentStretchChoices.m
//  NinePathImage
//
//  Created by Nicolas Verinaud on 27/02/12.
//  Copyright (c) 2012 Chlorophyll Vision. All rights reserved.
//

#import "ContentStretchChoicesViewController.h"

#import "ContentStretchWithCapsViewController.h"
#import "ContentStretchBuiltInNinePatchViewController.h"
#import "TUNinePatchViewController.h"

@implementation ContentStretchChoicesViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.title = @"Resizable Image";
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
	    
    // Configure the cell...
	switch (indexPath.row) 
	{
		case 0:
			cell.textLabel.text = @"With Caps";
			break;
			
		case 1:
			cell.textLabel.text = @"Built-in NinePatch";
			break;
			
		case 2:
			cell.textLabel.text = @"TUNinePatch";
			
		default:
			break;
	}
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) 
	{
		case 0:
			[self.navigationController pushViewController:[[[ContentStretchWithCapsViewController alloc] init] autorelease] animated:YES];
			break;
			
		case 1:
			[self.navigationController pushViewController:[[[ContentStretchBuiltInNinePatchViewController alloc] init] autorelease] animated:YES];
			break;
			
		case 2:
			[self.navigationController pushViewController:[[[TUNinePatchViewController alloc] init] autorelease] animated:YES];
			break;
			
		default:
			break;
	}
}

@end
