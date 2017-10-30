//
//  LDNavigationController.m
//  LDTaBar
//
//  Created by gozap on 2017/9/7.
//  Copyright © 2017年 com.longdai. All rights reserved.
//

#import "LDNavigationController.h"
#import "LDColor2.h"

#define LDFont2(x) [UIFont fontWithName:@"Helvetica" size:(x)]

@interface LDNavigationController ()

@end

@implementation LDNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //navigationBar 背景颜色（或者可以用图片
    [self.navigationBar setBackgroundImage:[LDColor2 createImageWithColor:[LDColor2 themeRed]] forBarMetrics:UIBarMetricsDefault];
    
    //navigationBar Title 样式
    [self.navigationBar setTitleTextAttributes:@{
                                                                      NSFontAttributeName : LDFont2(18),
                                                                      NSForegroundColorAttributeName : [LDColor2 blackColor]
                                                                      }];
    
    //[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [UIApplication sharedApplication].statusBarHidden = NO;
}
-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
#pragma mark 返回按钮
-(void)popself {
    [self popViewControllerAnimated:YES];
}

#pragma mark 创建返回按钮
-(UIBarButtonItem *)createBackButton {
    UIButton *liftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
    [liftBtn setBackgroundImage:[UIImage imageNamed:@"arrow_back"] forState:UIControlStateNormal];
    [liftBtn addTarget:self action:@selector(popself) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:liftBtn];
    UIBarButtonItem * liftButtonItem = [[UIBarButtonItem alloc] initWithCustomView:liftBtn];
    return liftButtonItem;
}

#pragma mark 重写方法
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 判断子控制器的数量
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
    if (viewController.navigationItem.leftBarButtonItem == nil && [self.viewControllers count] > 1) {
        viewController.navigationItem.leftBarButtonItem =[self createBackButton];
    }
    // 修改tabBra的frame  适配iPhone X Push过程中TabBar位置上移
    CGRect frame = self.tabBarController.tabBar.frame;
    frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
    self.tabBarController.tabBar.frame = frame;
}

-(void)setViewControllers:(NSArray<UIViewController *> *)viewControllers animated:(BOOL)animated{
    [super setViewControllers:viewControllers animated:animated];
    for (UIViewController * viewController in viewControllers) {
        if (viewController.navigationItem.leftBarButtonItem == nil) {
            viewController.navigationItem.leftBarButtonItem =[self createBackButton];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
