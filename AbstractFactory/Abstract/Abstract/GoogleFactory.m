//
//  GoogleFactory.m
//  Abstract
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "GoogleFactory.h"
#import "AndroidPhone.h"
#import "GoogleWatch.h"
@implementation GoogleFactory

-(BasePhone *)createPhone
{
    
    return [[AndroidPhone alloc]init];
    
    
}


-(BaseWatch *)createWatch{
    
    return [[GoogleWatch alloc]init];
    
}
@end
