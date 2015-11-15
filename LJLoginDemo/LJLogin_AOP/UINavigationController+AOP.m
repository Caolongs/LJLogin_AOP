//
//  UINavigationController+AOP.m

//
//  Created by caolongjian on 15/10/9.
//  Copyright (c) 2015年 caolongjian. All rights reserved.
//

#import "UINavigationController+AOP.h"
#import "NSObject+AOP.h"
#import "LJLoginController.h"


@implementation UINavigationController (AOP)

+ (void)load
{
    [self aop_ExchangeSelectorOldMethod:@selector(pushViewController:animated:) andNewSelector:@selector(aop_pushViewController:animated:)];
}
- (void)aop_pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    NSArray *tmp = @[@"LJHomeDetailController",@"LJFpptDetailController",@"LJMineDetailController"];
    NSString *className = NSStringFromClass([viewController class]);
    for (NSString *name in tmp) {
        if ([name isEqualToString:className]) {
            NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
            if (![ud objectForKey:@"name"]) {
                
                LJLoginController *login = [[LJLoginController alloc] init];
                UINavigationController *navLogin = [[UINavigationController alloc] initWithRootViewController:login];
                
                [self presentViewController:navLogin animated:YES completion:nil];
                return;
            }
        }
    }
    
    
    
    
    
    
    [self aop_pushViewController:viewController animated:animated];
}
@end
