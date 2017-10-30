//
//  LDTabBarController.m
//  LDTaBar
//
//  Created by gozap on 2017/9/7.
//  Copyright © 2017年 com.longdai. All rights reserved.
//

#import "LDTabBarController.h"
#import "LDNavigationController.h"
#import "LDTabBar.h"

#import "ViewController.h"

@interface LDTabBarController ()<UITabBarControllerDelegate>

@end

@implementation LDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setValue:[LDTabBar new] forKey:@"tabBar"];
    
    NSMutableArray * controllerArray = [NSMutableArray new];
    
    [controllerArray addObject:[self addChildViewControllerWith:@"ViewController" title:nil normalImage:@"tab_home"]];
    [controllerArray addObject:[self addChildViewControllerWith:@"ViewController" title:nil normalImage:@"tab_find"]];
    [controllerArray addObject:[self addChildViewControllerWith:@"ViewController" title:nil normalImage:@"tab_news"]];
    [controllerArray addObject:[self addChildViewControllerWith:@"ViewController" title:nil normalImage:@"tab_my"]];
    
    self.viewControllers = controllerArray;
    self.delegate = self;
}

-(LDNavigationController *)addChildViewControllerWith:(NSString *)className title:(NSString *)title  normalImage:(NSString *)normalImage{
    
    Class class = NSClassFromString(className);
    UIViewController * controller  = [class new];
    
    //设置tabBartitle
    //controller.title = title;
    controller.tabBarItem.image = [UIImage imageNamed:normalImage];
    
    NSString * selectedImage = [normalImage stringByAppendingString:@"_selected"];
    UIImage * image = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = image;
    
    [controller.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateSelected];
    
    LDNavigationController * ldNav = [[LDNavigationController alloc] initWithRootViewController:controller];
    
    return ldNav;
}

-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    return YES;
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
