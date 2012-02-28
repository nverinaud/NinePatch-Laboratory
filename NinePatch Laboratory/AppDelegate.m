//
//  AppDelegate.m
//  NinePathImage
//
//  Created by Nicolas Verinaud on 27/02/12.
//  Copyright (c) 2012 Chlorophyll Vision. All rights reserved.
//

#import "AppDelegate.h"
#import "ContentStretchChoicesViewController.h"

@implementation AppDelegate

@synthesize window;
@synthesize navigationController;

- (void)dealloc
{
	[window release];
	[navigationController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	ContentStretchChoicesViewController *cscVC = [[ContentStretchChoicesViewController alloc] init];
	navigationController = [[UINavigationController alloc] initWithRootViewController:cscVC];
	[cscVC release];
	window.rootViewController = navigationController;
    [window makeKeyAndVisible];
    return YES;
}

@end
