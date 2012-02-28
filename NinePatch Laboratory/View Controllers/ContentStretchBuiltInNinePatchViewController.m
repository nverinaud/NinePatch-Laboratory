//
//  ContentStretchTestViewController.m
//  NinePathImage
//
//  Created by Nicolas Verinaud on 27/02/12.
//  Copyright (c) 2012 Chlorophyll Vision. All rights reserved.
//

#import "ContentStretchBuiltInNinePatchViewController.h"

@implementation ContentStretchBuiltInNinePatchViewController

@synthesize image;
@synthesize imageView;
@synthesize xSlider;
@synthesize xLabel;
@synthesize ySlider;
@synthesize yLabel;
@synthesize widthSlider;
@synthesize widthLabel;
@synthesize heightSlider;
@synthesize heightLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		image = [[UIImage imageNamed:@"button"] retain];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	self.imageView.image = image;
	self.title = @"Built-in NinePatch";
	[self syncUI];
}

- (void)viewDidUnload
{
	[self setImageView:nil];
	[self setXSlider:nil];
	[self setYSlider:nil];
	[self setWidthSlider:nil];
	[self setHeightSlider:nil];
	[self setXLabel:nil];
	[self setYLabel:nil];
	[self setWidthLabel:nil];
	[self setHeightLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
	[imageView release];
	[xSlider release];
	[ySlider release];
	[widthSlider release];
	[heightSlider release];
	[xLabel release];
	[yLabel release];
	[widthLabel release];
	[heightLabel release];
	[super dealloc];
}

- (IBAction)sliderValueChanged:(UISlider *)sender 
{
	[self syncUI];
	[self makeContentStretch];
}

- (void)syncUI
{
	self.xLabel.text = [NSString stringWithFormat:@"%.2f", self.xSlider.value];
	self.yLabel.text = [NSString stringWithFormat:@"%.2f", self.ySlider.value];
	self.widthLabel.text = [NSString stringWithFormat:@"%.2f", self.widthSlider.value];
	self.heightLabel.text = [NSString stringWithFormat:@"%.2f", self.heightSlider.value];
}

- (void)makeContentStretch
{
	self.imageView.contentStretch = CGRectMake(self.xSlider.value, self.ySlider.value, self.widthSlider.value, self.heightSlider.value);
}

@end
