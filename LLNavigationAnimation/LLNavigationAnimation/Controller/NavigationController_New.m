//
//  NavigationController_New.m
//  Frbao
//
//  Created by AmorLin on 2018/4/26.
//  Copyright © 2018年 Baby. All rights reserved.
//

#import "NavigationController_New.h"
#import "NextViewController.h"

@interface NavigationController_New ()
//返回按钮
@property (weak, nonatomic) IBOutlet UIButton *backItem;
//控制渐变度的试图
@property (weak, nonatomic) IBOutlet UIView *navigationView;
//包含控件的视图
@property (weak, nonatomic) IBOutlet UIView *navigationContentView;
//标题
@property (weak, nonatomic) IBOutlet UILabel *titleNameLabel;

@end
@implementation NavigationController_New

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NextViewController *VC = [[NextViewController alloc] init];
    VC.view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    [self.view addSubview:VC.view];
    
    [self.view bringSubviewToFront:self.navigationView];
    [self.view bringSubviewToFront:self.navigationContentView];
    
    [self.backItem addTarget:self action:@selector(backEvent) forControlEvents:UIControlEventTouchUpInside];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
}
//返回按钮
-(void)backEvent {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
