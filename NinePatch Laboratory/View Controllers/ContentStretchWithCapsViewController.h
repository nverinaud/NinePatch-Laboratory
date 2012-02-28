//
//  ViewController.h
//  NinePathImage
//
//  Created by Nicolas Verinaud on 27/02/12.
//  Copyright (c) 2012 Chlorophyll Vision. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentStretchWithCapsViewController : UIViewController

@property (nonatomic, retain) UIImage *image;

@property (nonatomic, retain) IBOutlet UIImageView *imageView;

@property (nonatomic, retain) IBOutlet UISlider *leftCapWidthSlider;
@property (nonatomic, retain) IBOutlet UILabel *leftCapWidthValueLabel;
@property (nonatomic, retain) IBOutlet UISlider *topCapHeightSlider;
@property (nonatomic, retain) IBOutlet UILabel *topCapHeightValueLabel;

- (IBAction)sliderValueChanged:(UISlider *)sender;

@end
