//
//  DeviceFactory.m
//  FactoryPattern
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "DeviceFactory.h"

/*
 
 iOS设计模式-工厂
 工厂
   1.制造产品
   2.工厂封装了制造产品工艺
 
 客户
   1.不参与手机制造流程
   2.要求：客户是需要使用固定产品的
 
联系： 客户向工厂发制作固定手机的命令。工厂制作相应的手机，客户不参与制作
 */


//简单工厂使用场景
//简化生产流程
//隔离生产产品的细节
//不同类型的产品之间有着一些共同的功能
//简单工厂类是一个具体的工厂

//工厂类是便利构造器
@implementation DeviceFactory

+(BaseDevie *)DeviceFactoryWithDeviceType:(EDevieType)type{

    BaseDevie *device=nil;
    
    if (type==kiPhone) {
        
        device=[[iPhoneDevice alloc]init];
        
    }else if (type==kAndroid){
    
    
        device=[[AndroidDevice alloc]init];
    }
    
    return device;
    
}

@end
