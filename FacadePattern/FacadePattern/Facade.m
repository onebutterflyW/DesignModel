//
//  Facade.m
//  FacadePattern
//
//  Created by 软件工程系01 on 16/11/25.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "Facade.h"

@implementation Facade
@synthesize transportation = _transportation;
@synthesize hotel = _hotel;
@synthesize restaurant = _restaurant;
@synthesize attractions = _attractions;

- (id)init
{
    self = [super init];
    if (self != nil)
    {
        _transportation = [[Transportation alloc] init];
        _hotel = [[Hotel alloc] init];
        _restaurant = [[Restaurant alloc] init];
        _attractions = [[Attractions alloc] init];
    }
    return self;
}

- (void)travel
{
    [_transportation selTransportation];
    [_hotel selHotel];
    [_restaurant selRestaurant];
    [_attractions selAttractions];
}



@end
