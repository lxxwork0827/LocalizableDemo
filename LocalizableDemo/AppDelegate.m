//
//  AppDelegate.m
//  LocalizableDemo
//
//  Created by 刘星星 on 16/6/24.
//  Copyright © 2016年 szph-software04. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *language = [languages objectAtIndex:0];
    if ([language hasPrefix:@"zh-Hans"]||([language hasPrefix:@"zh-CN"])) {//开头匹配
        [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:@"appLanguage"];
    } else if( [language hasPrefix:@"zh-"]) {
        [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hant" forKey:@"appLanguage"];
    }
    else{
        [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:@"appLanguage"];
    }
    [[NSUserDefaults  standardUserDefaults]synchronize];
    NSString * str = [[NSUserDefaults standardUserDefaults]objectForKey:@"appLanguage"];
    NSLog(@"%@",str);
    return YES;
}
@end
