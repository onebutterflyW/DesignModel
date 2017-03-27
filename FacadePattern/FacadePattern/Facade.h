//
//  Facade.h
//  FacadePattern
//
//  Created by 软件工程系01 on 16/11/25.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Transportation.h"
#import "Hotel.h"
#import "Restaurant.h"
#import "Attractions.h"

@interface Facade : NSObject
{
    Transportation  *_transportation;
    Hotel           *_hotel;
    Restaurant      *_restaurant;
    Attractions     *_attractions;
}

@property (nonatomic, retain) Transportation *transportation;
@property (nonatomic, retain) Hotel *hotel;
@property (nonatomic, retain) Restaurant *restaurant;
@property (nonatomic, retain) Attractions *attractions;

- (void)travel;

@end
