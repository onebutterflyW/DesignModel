//
//  MySingleton.h
//  NO-ARC-Singleton
//  非ARC环境下的单例模式
//  Created by 软件工程系01 on 16/11/23.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject

+ (id)sharedInstance;

@end
