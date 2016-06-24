//
//  ViewController.m
//  LocalizableDemo
//
//  Created by 刘星星 on 16/6/24.
//  Copyright © 2016年 szph-software04. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()
//http://blog.csdn.net/lmyuanhang/article/details/50419971
@end

@implementation ViewController

/**
 使用步骤：
 首先先配置语言环境，然后创建相对应的strings
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(100, 300, 200, 100)];
    label1.backgroundColor = [UIColor redColor];
    label1.text = Localized(@"这是中文环境哦");
    [self.view addSubview:label1];
}

@end
