//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "PoliceSketch.h"

@interface LPSViewController ()

@property (nonatomic, strong) PoliceSketch *policeSketch;

@property (weak, nonatomic) IBOutlet UIImageView *eyesIMG;

@property (weak, nonatomic) IBOutlet UIImageView *noseIMG;

@property (weak, nonatomic) IBOutlet UIImageView *mouthIMG;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.policeSketch = [[PoliceSketch alloc] init];
	
    // Here is where you will create the buttons & image views and add them to the view.
}

- (IBAction)eyesPrev:(id)sender {
    self.eyesIMG.image = [self.policeSketch prevEye];
}


- (IBAction)eyesNext:(id)sender {
    self.eyesIMG.image = [self.policeSketch nextEye];
}

- (IBAction)nosePrev:(id)sender {
    self.noseIMG.image = [self.policeSketch prevNose];
}

- (IBAction)noseNext:(id)sender {
    self.noseIMG.image = [self.policeSketch nextNose];
}

- (IBAction)mouthPrev:(id)sender {
    self.mouthIMG.image = [self.policeSketch prevMouth];
}

- (IBAction)mouthNext:(id)sender {
    self.mouthIMG.image = [self.policeSketch nextMouth];
}



@end
