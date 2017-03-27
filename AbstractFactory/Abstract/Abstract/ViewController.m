//
//  ViewController.m
//  Abstract
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import "ViewController.h"
#import "FactoryManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 获取工厂
    
    BaseFactory *factory=[FactoryManager factoryWithBrand:kApple];
    
    //商品
    BasePhone *phone=[factory createPhone];
    BaseWatch *watch=[factory createWatch];
    
    //NSLog(@"%@,%@",phone,watch);
    
    
    //NSNumber，NSValue均是工厂类
    NSLog(@"%@",[[NSNumber alloc]init]);
    
    //numberWithBool看成一种工厂
    NSLog(@"%@",[NSNumber numberWithBool:YES]);
    
    
}


@end
