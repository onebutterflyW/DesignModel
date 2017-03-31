//
//  ConcreteRadarMediator.h
//  MediatorPatter
//
//  Created by Bruce on 15/8/31.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "AbstractRadarMediator.h"

@interface ConcreteRadarMediator : AbstractRadarMediator

@property (nonatomic, weak) Plane *planeA;
@property (nonatomic, weak) Plane *planeB;

- (instancetype)initWithPlaneA:(Plane *)planeA planeB:(Plane *)planeB;
// 重写这两个方法
- (void)noticeLocationToPlaneAWithDistance:(float)distance;
- (void)noticeLocationToPlaneBWithDistance:(float)distance;

@end
