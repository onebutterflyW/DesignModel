//
//  AppleFactory.m
//  Abstract
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "AppleFactory.h"
#import "iPhone.h"
#import "AppleWatch.h"
@implementation AppleFactory

-(BasePhone *)createPhone
{
    
    return [[iPhone alloc]init];
    
    
}


-(BaseWatch *)createWatch{
    
    return [[AppleWatch alloc]init];
    
}
@end
