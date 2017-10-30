//
//  ViewController.m
//  LDTaBar
//
//  Created by gozap on 2017/9/7.
//  Copyright © 2017年 com.longdai. All rights reserved.
//

#import "ViewController.h"
#import "ffViewController.h"


static UIWindow *startImageWindow = nil;

@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"龙贷";

    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *pageImage = [UIView new];
    pageImage.frame = CGRectMake(0, 150, self.view.frame.size.width,100);
    pageImage.backgroundColor = [UIColor grayColor];
    [self.view addSubview:pageImage];
    [pageImage addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pageAction)]];
    
}

- (void)pageAction {
    ffViewController *detailVC = [ffViewController new];
    [self.navigationController pushViewController:detailVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
