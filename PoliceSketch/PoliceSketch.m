//
//  PoliceSketch.m
//  PoliceSketch
//
//  Created by Rushan on 2017-05-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "PoliceSketch.h"

@implementation PoliceSketch

- (instancetype)init
{
    self = [super init];
    if (self) {
        _eyes = @[[UIImage imageNamed: @"eyes_1.jpg"], [UIImage imageNamed:@"eyes_2.jpg"],[UIImage imageNamed:@"eyes_3.jpg"], [UIImage imageNamed:@"eyes_4.jpg"], [UIImage imageNamed:@"eyes_5.jpg"]];
        _nose = @[[UIImage imageNamed: @"nose_1.jpg"], [UIImage imageNamed:@"nose_2.jpg"],[UIImage imageNamed:@"nose_3.jpg"], [UIImage imageNamed:@"nose_4.jpg"], [UIImage imageNamed:@"nose_5.jpg"]];
        _mouth = @[[UIImage imageNamed: @"mouth_1.jpg"], [UIImage imageNamed:@"mouth_2.jpg"],[UIImage imageNamed:@"mouth_3.jpg"], [UIImage imageNamed:@"mouth_4.jpg"], [UIImage imageNamed:@"mouth_5.jpg"]];
        
        _eyesIndex = 0;
        _noseIndex = 0;
        _mouthIndex = 0;
    }
    return self;
}


-(UIImage *)prevEye{
    if(self.eyesIndex == 0){ //if your at last position move back
        self.eyesIndex = [self.eyes count] -1;
    }else{
        self.eyesIndex--;  //decrement
    }
    return self.eyes[self.eyesIndex];
}

-(UIImage *)nextEye{
    if(self.eyesIndex == [self.eyes count]-1){ //move from prev to next
        self.eyesIndex = 0;
    }else{
        self.eyesIndex++;  //increment
    }
    return self.eyes[self.eyesIndex];
}

-(UIImage *)prevNose{
    if(self.noseIndex == 0){ //if your at last position move back
        self.noseIndex = [self.nose count] -1;
    }else{
        self.noseIndex--;  //decrement
    }
    return self.nose[self.noseIndex];
}

-(UIImage *)nextNose{
    if(self.noseIndex == [self.nose count]-1){ //move from prev to next
        self.noseIndex = 0;
    }else{
        self.noseIndex++;  //increment
    }
    return self.nose[self.noseIndex];
}

-(UIImage *)prevMouth{
    if(self.mouthIndex == 0){ //if your at last position move back
        self.mouthIndex = [self.mouth count] -1;
    }else{
        self.mouthIndex--;  //decrement
    }
    return self.mouth[self.mouthIndex];
}

-(UIImage *)nextMouth{
    if(self.mouthIndex == [self.mouth count]-1){ //move from prev to next
        self.mouthIndex = 0;
    }else{
        self.mouthIndex++;  //increment
    }
    return self.mouth[self.mouthIndex];
}

@end
