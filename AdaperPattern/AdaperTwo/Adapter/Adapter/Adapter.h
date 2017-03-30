//
//  Adapter.m
//  Adapter
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adaptee.h"
#import "Target.h"

// 对象适配
@interface Adapter : NSObject<Target>
{
    Adaptee         *_adaptee;
}

@end
