//
//  LJLoginController.m
//  1009_03-权限控制
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng曹. All rights reserved.
//

#import "LJLoginController.h"

@interface LJLoginController ()
@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UITextField *pwdText;

@end

@implementation LJLoginController
- (IBAction)btnClick:(id)sender {
    NSString *name = self.nameText.text;
    NSString *pwd = self.pwdText.text;
    
    //系统提供的一个键值存储plist文件工具类
    //使用方法就是与可变字典对象相同
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:name forKey:@"name"];
    [ud setObject:pwd forKey:@"pwd"];
    
    //立即执行储存到plist文件中
    [ud synchronize];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStylePlain target:self action:@selector(itemClick:)];
    
}
- (void)itemClick:(UIBarButtonItem *)item
{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
