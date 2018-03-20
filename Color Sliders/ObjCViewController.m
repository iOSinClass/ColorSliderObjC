//
//  ObjCViewController.m
//  Color Sliders
//
//  Created by CSSE Department on 3/20/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "ObjCViewController.h"
//
//@interface ObjCViewController ()
//
//@end

@implementation ObjCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.redSlider.value = 0.71;
    self.blueSlider.value = 0.22;
    self.greenSlider.value = 0.04;
    self.alphaSlider.value = 1.0;
    [self updateView];
}

- (IBAction)sliderChanged:(id)sender {
//    NSLog(@"Slider Changed");
    [self updateView];
}

- (void) updateView {
    self.redLabel.text = [NSString stringWithFormat:@"%.2f", self.redSlider.value];
    self.blueLabel.text = [NSString stringWithFormat:@"%.2f", self.blueSlider.value];
    self.greenLabel.text = [NSString stringWithFormat:@"%.2f", self.greenSlider.value];
    self.alphaLabel.text = [NSString stringWithFormat:@"%.2f", self.alphaSlider.value];
    
    self.colorView.backgroundColor = [[UIColor alloc] initWithRed:self.redSlider.value
                                                            green:self.greenSlider.value
                                                             blue:self.blueSlider.value
                                                            alpha:self.alphaSlider.value];
}
@end
