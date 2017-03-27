//
//  main.m
//  FacadePattern
//
//  Created by 软件工程系01 on 16/11/25.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Facade.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Facade *facade = [[Facade alloc] init];
        [facade travel];
        [facade release];
    }
    return 0;
}

