//
//  PoliceSketch.h
//  PoliceSketch
//
//  Created by Rushan on 2017-05-08.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PoliceSketch : NSObject

@property (nonatomic) NSArray *eyes;
@property (nonatomic) NSArray *nose;
@property (nonatomic) NSArray *mouth;

@property (nonatomic) NSInteger eyesIndex;
@property (nonatomic) NSInteger noseIndex;
@property (nonatomic) NSInteger mouthIndex;

-(UIImage *)prevEye;
-(UIImage *)nextEye;

-(UIImage *)prevNose;
-(UIImage *)nextNose;


-(UIImage *)prevMouth;
-(UIImage *)nextMouth;

@end
