//
//  DeviceFactory.h
//  FactoryPattern
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDevie.h"
#import "iPhoneDevice.h"
#import "AndroidDevice.h"

typedef enum :NSInteger{
    
    kiPhone=0x11,
    kAndroid,
    kNokia,
    
} EDevieType;

@interface DeviceFactory : NSObject

//根据用户提交的指令创键出具体的手机
+(BaseDevie *)DeviceFactoryWithDeviceType:(EDevieType)type;

@end
