//
//  LableImage.m
//  FactoryPattern
//
//  Created by 软件工程系01 on 17/3/20.
//  Copyright © 2017年 软件工程系01. All rights reserved.
//

#import "LableImage.h"

@implementation LableImage

@synthesize text;
@synthesize image;
@synthesize rect;

-(instancetype)initWithFrame:(CGRect)frame title:(NSString *)title image:(UIImage *)iimage{
    
    self = [self init];
    self.frame = frame;
    if (text!=nil) {
        text  = title;
    }
    
    if (image!=nil) {
        image = iimage;

    }

    return self;

}

// ImageControl.m
- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    // 将事件传递到对象本身来处理
    [super sendAction:@selector(handleAction:) to:self forEvent:event];
}

- (void)handleAction:(id)sender {
    
    NSLog(@"handle Action");
}

@end
