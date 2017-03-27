//
//  main.m
//  Singleton
//
//  Created by 软件工程系01 on 16/11/23.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySingleton.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        MySingleton *singleton1 = [MySingleton sharedInstance];
        MySingleton *sinleton2 = [MySingleton sharedInstance];
        MySingleton *sinleton3 = [[MySingleton alloc] init];
        
    }
    return 0;
}

