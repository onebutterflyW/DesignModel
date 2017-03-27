//
//  MySingleton.m
//  Singleton
//
//
//  Created by 软件工程系01 on 16/11/23.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

static MySingleton *mySingleton = nil;

/*
+ (id)sharedInstance
{
    @synchronized(self)
    {
        if(mySingleton == nil)
        {
            mySingleton = [[super allocWithZone:NULL] init];
            NSLog(@"allocWithZone");
        }
    }
    return mySingleton;
}

// 通过返回当前的sharedInstance实例，就能防止实例化一个新的对象。
+ (id)allocWithZone:(NSZone *)zone
{
    return [[self sharedInstance] retain];
}
 */

+ (id)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mySingleton = [[self alloc] init];
    });
    return mySingleton;
}

/*
+ (id)sharedInstance
{
    @synchronized (self)
    {
        if (mySingleton == nil)
        {
            mySingleton = [[self alloc] init];
        }
    }
    return mySingleton;
}
 */

+ (id)allocWithZone:(NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (mySingleton == nil)
        {
            mySingleton = [super allocWithZone:zone];
            NSLog(@"allocWithZone");
        }
    });
    return mySingleton; // on subsequent allocation attempts return nil
}

- (id)init
{
    self = [super init];
    if (self != nil)
    {
        // 其他初始化操作
    }
    return self;
}

// 防止外界拷贝造成多个实例，保证实例的唯一性。
- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

// 因为只有一个实例对象，所以retain不能增加引用计数。
- (id)retain
{
    return self;
}

// 因为只有一个实例对象，设置默认引用计数。这里是取的NSUinteger的最大值，当然也可以设置成1或其他值。
- (NSUInteger)retainCount
{
    return UINT_MAX;  // denotes an object that cannot be released
}

// oneway是用于多线程编程中，表示单向执行，不能“回滚”，即原子操作。该方法是空的,不让用户release掉这个对象。
- (oneway void)release
{
    //do nothing
}

//除了返回单例外，什么也不做。
- (id)autorelease
{
    return self;
}

// 该方法永远不会被调用,因为在程序的生命周期内容，该单例一直都存在。（所以该方法可以不实现）
- (void)dealloc
{
    NSLog(@"dealloc");
    [super dealloc];
}

@end
