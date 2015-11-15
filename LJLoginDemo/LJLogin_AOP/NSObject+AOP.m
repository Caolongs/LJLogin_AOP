//
//  NSObject+AOP.m
//
//  Created by caolongjian on 15/10/9.
//  Copyright (c) 2015年 caolongjian. All rights reserved.
//

#import "NSObject+AOP.h"
#import <objc/runtime.h>

@implementation NSObject (AOP)
+ (void)aop_ExchangeSelectorOldMethod:(SEL)oldSel andNewSelector:(SEL)newSel
{
    //AOP 面向切面思想
    //在不更改原来具体实现的情况下，增加功能，或者实现某些具体的控制
    //class_getInstanceMethod 通过Class 获得实例方法的具体描述结构体Method
    Method oldMethod = class_getInstanceMethod([self class], oldSel);
    Method newMethod = class_getInstanceMethod([self class], newSel);
    //改变两个方法的具体指向
    method_exchangeImplementations(oldMethod, newMethod);
}
@end
