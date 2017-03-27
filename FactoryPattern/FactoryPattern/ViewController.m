//
//  ViewController.m
//  FactoryPattern
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//
#import "LableImage.h"
#import "ViewController.h"
#import "DeviceFactory.h"
@interface ViewController ()
{
    LableImage *labeImage;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    labeImage = [[LableImage alloc]initWithFrame:CGRectMake(100, 80, 100, 100) title:@"测试" image:[UIImage imageNamed:@"ff.png"]];
    labeImage.backgroundColor = [UIColor redColor];
    [self.view addSubview:labeImage];
    [labeImage addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
 
        
    //从工厂中生产出具体的产品
    BaseDevie *iPhone=[DeviceFactory DeviceFactoryWithDeviceType:kAndroid];
    //使用产品的功能
    [iPhone sendMessage];
    
    //使用特定功能
    iPhoneDevice *iii=(iPhoneDevice *)[DeviceFactory DeviceFactoryWithDeviceType:kiPhone];
    [iii fingerprintIndetification];
    

    
}

-(void)tap{

    NSLog(@"点击labeImage");


}





@end
