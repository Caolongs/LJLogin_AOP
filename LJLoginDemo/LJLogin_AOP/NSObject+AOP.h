//
//  NSObject+AOP.h

//
//  Created by caolongjian on 15/10/9.
//  Copyright (c) 2015年 caolongjian. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSObject (AOP)
+ (void)aop_ExchangeSelectorOldMethod:(SEL)oldSel andNewSelector:(SEL)newSel;
@end
