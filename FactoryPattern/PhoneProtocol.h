//
//  PhoneProtocol.h
//  FactoryPattern
//
//  Created by 软件工程系01 on 16/11/24.
//  Copyright © 2016年 软件工程系01. All rights reserved.
//

#import <Foundation/Foundation.h>
//手机打电话、发短信的行为（使用协议统一接口）
@protocol PhoneProtocol <NSObject>

@required
-(void)phoneCall;

-(void)sendMessage;


@end
