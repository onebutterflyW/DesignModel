//
//  LableImage.h
//  FactoryPattern
//
//  Created by 软件工程系01 on 17/3/20.
//  Copyright © 2017年 软件工程系01. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LableImage : UIControl

@property (nonatomic, copy)   NSString *text;
@property (nonatomic, retain) UIImage *image;
@property (nonatomic, assign) CGRect   rect;

-(instancetype)initWithFrame:(CGRect)frame title:(NSString *)title image:(UIImage *)iimage;

@end
