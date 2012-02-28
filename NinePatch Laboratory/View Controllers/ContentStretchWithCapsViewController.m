//
//  ViewController.m
//  NinePathImage
//
//  Created by Nicolas Verinaud on 27/02/12.
//  Copyright (c) 2012 Chlorophyll Vision. All rights reserved.
//

#import "ContentStretchWithCapsViewController.h"

@implementation ContentStretchWithCapsViewController

@synthesize image, imageView, topCapHeightSlider, topCapHeightValueLabel, leftCapWidthSlider, leftCapWidthValueLabel;

- (void)dealloc
{
	[image release];
	[imageView release];
	[topCapHeightSlider release];
	[topCapHeightValueLabel release];
	[leftCapWidthSlider release];
	[leftCapWidthValueLabel release];
	[super dealloc];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) 
	{
		image = [[UIImage imageNamed:@"button"] retain];
	}
	return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.imageView.image = image;
	self.leftCapWidthSlider.value = 0;
	self.leftCapWidthValueLabel.text = @"0";
	self.leftCapWidthSlider.maximumValue = [image size].width/2;
	self.topCapHeightSlider.value = 0;
	self.topCapHeightValueLabel.text = @"0";
	self.topCapHeightSlider.maximumValue = [image size].height/2;
	
	self.title = @"Top & Left caps";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
   
	self.imageView = nil;
	self.topCapHeightSlider = nil;
	self.leftCapWidthSlider = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)sliderValueChanged:(UISlider *)sender
{
	self.imageView.image = [image stretchableImageWithLeftCapWidth:self.leftCapWidthSlider.value topCapHeight:self.topCapHeightSlider.value];
	
	self.leftCapWidthValueLabel.text = [NSString stringWithFormat:@"%.0f", self.leftCapWidthSlider.value];
	self.topCapHeightValueLabel.text = [NSString stringWithFormat:@"%.0f", self.topCapHeightSlider.value];
}

@end
