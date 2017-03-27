//
//  FactoryManager.h
//  Abstract
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseFactory.h"
#import "AppleFactory.h"
#import "GoogleFactory.h"

typedef enum : NSUInteger{
    
    kApple=0x11,
    kGoogle,


} EFactoryType;

@interface FactoryManager : NSObject


+(BaseFactory *)factoryWithBrand:(EFactoryType)factoryType;

@end
