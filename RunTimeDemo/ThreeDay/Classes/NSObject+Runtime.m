//
//  NSObject+Runtime.m
//  RunTimeDemo
//
//  Created by YY on 16/8/28.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "NSObject+Runtime.h"

@implementation NSObject (Runtime)

+ (NSArray *)objPropertyList {
    // 创建可变数组 存放属性列表中的属性
    NSMutableArray *mArray = [NSMutableArray array];
    unsigned int count = 0;
    //1. 获取属性列表
    objc_property_t *propertyList = class_copyPropertyList([self class], &count);
    //2. 遍历数组
    for (unsigned int i = 0; i< count; i++) {
        //获取数组中的第i个元素(类的属性)
        objc_property_t property = propertyList[i];
        //通过属性获取字符串
        const char *cName = property_getName(property);
        //打印获取到的第i个字符串
        // 将C字符串转换为OC字符串
        NSString *ocName = [NSString stringWithCString:cName encoding:NSUTF8StringEncoding];
        // 添加属性名到数组中
        [mArray addObject:ocName];
    }
    // C 语言函数需要释放 防止内存泄漏
    free(propertyList);
    // 打印类属性列表的属性数量
    return mArray;
}

@end
