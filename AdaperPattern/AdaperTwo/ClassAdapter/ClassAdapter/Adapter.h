//
//  Adapter.h
//  Adapter
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adaptee.h"
#import "Target.h"

// 类适配
@interface Adapter : Adaptee<Target>

@end
