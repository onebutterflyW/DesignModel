//
//  FactoryManager.m
//  Abstract
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "FactoryManager.h"

//工厂管理器
@implementation FactoryManager

//根据用户指定的工厂类别，返回具体的工厂
+(BaseFactory *)factoryWithBrand:(EFactoryType)factoryType{

    BaseFactory *factory=nil;
    
    if (factoryType==kApple) {
        
        factory=[[AppleFactory alloc]init];
        
    }else if(factoryType==kGoogle){
    
        factory=[[GoogleFactory alloc]init];
    
    }
    
    return factory;

}

@end
