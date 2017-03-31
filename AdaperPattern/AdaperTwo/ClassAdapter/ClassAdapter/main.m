//
//  main.m
//  类适配器
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Target.h"
#import "Adapter.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        id<Target> target = [[[Adapter alloc] init] autorelease];
        [target request];
    }
    return 0;
}
