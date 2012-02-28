//
//  TUNinePatchViewController.m
//  NinePatch Laboratory
//
//  Created by Nicolas Verinaud on 28/02/12.
//  Copyright (c) 2012 Chlorophyll Vision. All rights reserved.
//

#import "TUNinePatchViewController.h"
#import "NinePatch.h"

@implementation TUNinePatchViewController

@synthesize imageView;

- (void)dealloc
{
	[imageView release];
	[super dealloc];
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = @"TUNinePatch";
}


- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	
	UIImage *ninePatchOriginal = [UIImage imageNamed:@"button.9.png"];
	self.imageView.image = ninePatchOriginal;
	
	TUNinePatch *ninePatch = [TUNinePatch ninePatchWithNinePatchImage:ninePatchOriginal];
	
	UIImageView *imgView = nil;
	CGSize size = CGSizeZero;
	for (UIView *view in self.view.subviews) 
	{
		if ([view isKindOfClass:[UIImageView class]] && view != self.imageView) 
		{
			imgView = (UIImageView *)view;
			size = imgView.bounds.size;
			imgView.image = [ninePatch imageOfSize:size];
		}
	}
}


- (void)viewDidUnload
{
    [super viewDidUnload];
	self.imageView = nil;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
