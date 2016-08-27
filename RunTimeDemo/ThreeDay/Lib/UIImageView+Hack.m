//
//  UIImage+Hack.m
//  RunTimeDemo
//
//  Created by YY on 16/8/27.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "UIImageView+Hack.h"

@implementation UIImageView (Hack)

+ (void)load {
    //原来方法
    Method methodOriginal = class_getInstanceMethod([self class], @selector(setImage:));
    //交叉方法
    Method methodSwizzled = class_getInstanceMethod([self class], @selector(yy_setImage:));
    /** 交叉 */
    method_exchangeImplementations(methodOriginal, methodSwizzled);
}

- (void)yy_setImage:(UIImage*)image {
    
    NSLog(@"%s",__FUNCTION__);
    // 开启图形上下文
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0);
    // 重绘
    [image drawInRect:self.bounds];
    // 获取图片
    UIImage *imageResult = UIGraphicsGetImageFromCurrentImageContext();
    // 关闭图形上下文
    UIGraphicsEndImageContext();
    
    [self yy_setImage:imageResult];
}
@end
