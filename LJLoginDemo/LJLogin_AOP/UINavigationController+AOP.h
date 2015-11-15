//
//  UINavigationController+AOP.h
//
//  Created by caolongjian on 15/10/9.
//  Copyright (c) 2015年 caolongjian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (AOP)
- (void)aop_pushViewController:(UIViewController *)viewController animated:(BOOL)animated;
@end
