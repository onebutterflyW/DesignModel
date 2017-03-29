//
//  Adapter.m
//  Adapter
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "Adapter.h"

@implementation Adapter

- (id)init
{
    self = [super init];
    
    if (self != nil)
    {
        _adaptee = [[[Adaptee alloc] init] autorelease];
    }
    
    return self;
}

- (void)request
{
    [_adaptee specificRequest];
}

@end
