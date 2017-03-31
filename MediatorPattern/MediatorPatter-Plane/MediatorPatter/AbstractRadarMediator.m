//
//  AbstractRadarMediator.m
//  MediatorPatter
//
//  Created by Bruce on 15/8/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "AbstractRadarMediator.h"

@implementation AbstractRadarMediator



- (void)noticeLocationToPlaneAWithDistance:(float)distance {
  
    NSLog(@"由子类来实现");
}

- (void)noticeLocationToPlaneBWithDistance:(float)distance {
    
    NSLog(@"由子类来实现");
}

@end
