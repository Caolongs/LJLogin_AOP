//
//  LJFootController.m
//  1009_03-权限控制
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng曹. All rights reserved.
//

#import "LJFootController.h"
#import "LJFpptDetailController.h"

@interface LJFootController ()

@end

@implementation LJFootController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 180, 40);
    [self.view addSubview:button];
    [button setTitle:@"点击跳转" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor grayColor];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)btnClick:(UIButton *)btn
{

    
    LJFpptDetailController *homeDetail = [[LJFpptDetailController alloc] init];
    [self.navigationController pushViewController:homeDetail animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
