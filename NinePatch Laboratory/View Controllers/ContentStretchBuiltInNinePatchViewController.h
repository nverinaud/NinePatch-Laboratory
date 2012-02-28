//
//  ContentStretchTestViewController.h
//  NinePathImage
//
//  Created by Nicolas Verinaud on 27/02/12.
//  Copyright (c) 2012 Chlorophyll Vision. All rights reserved.
//



@interface ContentStretchBuiltInNinePatchViewController : UIViewController

@property (nonatomic, retain) UIImage *image;

@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UISlider *xSlider;
@property (retain, nonatomic) IBOutlet UILabel *xLabel;
@property (retain, nonatomic) IBOutlet UISlider *ySlider;
@property (retain, nonatomic) IBOutlet UILabel *yLabel;
@property (retain, nonatomic) IBOutlet UISlider *widthSlider;
@property (retain, nonatomic) IBOutlet UILabel *widthLabel;
@property (retain, nonatomic) IBOutlet UISlider *heightSlider;
@property (retain, nonatomic) IBOutlet UILabel *heightLabel;

- (IBAction)sliderValueChanged:(UISlider *)sender;
- (void)syncUI;
- (void)makeContentStretch;
@end
