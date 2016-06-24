//
//  AppDelegate.h
//  LocalizableDemo
//
//  Created by 刘星星 on 16/6/24.
//  Copyright © 2016年 szph-software04. All rights reserved.
//

#import <UIKit/UIKit.h>
 #define Localized(key)  [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:nil]
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

