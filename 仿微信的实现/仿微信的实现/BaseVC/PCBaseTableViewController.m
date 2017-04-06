//
//  PCTableViewController.m
//  PonyCar
//
//  Created by xiaoliuTX on 2017/3/30.
//  Copyright © 2017年 letubao. All rights reserved.
//

#import "PCBaseTableViewController.h"
#import "UIColor+HEX.h"

@interface PCBaseTableViewController ()
@property (nonatomic, strong) UIView *topBarView;
@end

@implementation PCBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[[self.navigationController.navigationBar subviews] objectAtIndex:0] setAlpha:0];
    self.navigationBarSeperateView = [UIView new];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.topBarView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 64)];
    self.topBarView.layer.masksToBounds = YES;
    self.topBarView.backgroundColor = self.topBarBackgroundColor ? self.topBarBackgroundColor : [UIColor whiteColor];
    self.navigationBarSeperateView.frame = CGRectMake(0, 63.5, ScreenWidth, 1);
    self.navigationBarSeperateView.backgroundColor = [UIColor colorWithHexString:@"e3e3e3"];
    [self.topBarView addSubview:self.navigationBarSeperateView];
    
    self.view.layer.masksToBounds = NO;
    [self.view addSubview:self.topBarView];
}

- (void)setTopBarBackgroundColor:(UIColor *)topBarBackgroundColor {
    [self.topBarView setBackgroundColor:topBarBackgroundColor];
}

@end
