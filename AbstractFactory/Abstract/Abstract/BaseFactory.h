//
//  BaseFactory.h
//  Abstract
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasePhone.h"
#import "BaseWatch.h"

@interface BaseFactory : NSObject


//抽象的工厂，创键手机，手表
-(BasePhone *)createPhone;


-(BaseWatch *)createWatch;


@end
