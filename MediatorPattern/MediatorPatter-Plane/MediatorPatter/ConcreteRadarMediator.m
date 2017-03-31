//
//  ConcreteRadarMediator.m
//  MediatorPatter
//
//  Created by Bruce on 15/8/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "ConcreteRadarMediator.h"

@implementation ConcreteRadarMediator

- (instancetype)initWithPlaneA:(Plane *)planeA planeB:(Plane *)planeB {
    NSLog(@"抽象中初始化%s",__func__);
    self = [super init];
    if (self) {
        _planeA = planeA;
        _planeB = planeB;
    }
    return self;
}

- (void)noticeLocationToPlaneAWithDistance:(float)distance {
    
    NSLog(@"具体中介者%s",__func__);
    self.planeA.otherPlaneDistance = distance;
}

- (void)noticeLocationToPlaneBWithDistance:(float)distance {
    NSLog(@"具体中介者%s",__func__);
    self.planeB.otherPlaneDistance = distance;
}

@end
