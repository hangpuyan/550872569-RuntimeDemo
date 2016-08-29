//
//  NSObject+Runtime.h
//  RunTimeDemo
//
//  Created by YY on 16/8/28.
//  Copyright © 2016年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Runtime)

//获取类的属性列表
+ (NSArray *)objPropertyList;
@end
