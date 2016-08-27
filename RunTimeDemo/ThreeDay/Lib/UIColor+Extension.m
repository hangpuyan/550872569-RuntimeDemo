//
//  UIColor+Extension.m
//  RunTimeDemo
//
//  Created by YY on 16/8/27.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+(instancetype)yy_colorWithHex:(u_int32_t)hex {

    int red = (hex & 0xff0000) >> 16;
    
    int green = (hex & 0x00ff00) >> 8;
    
    int blue = (hex & 0x0000ff);
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
}
@end
