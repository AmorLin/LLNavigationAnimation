//
//  ViewController.m
//  LLNavigationAnimation
//
//  Created by 汪林林 on 2018/5/17.
//  Copyright © 2018年 汪林林. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import "NavigationController_New.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *jumpButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, 100, 100)];
    jumpButton.backgroundColor = [UIColor grayColor];
    [jumpButton setTitle:@"跳转" forState:UIControlStateNormal];
    [jumpButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [jumpButton addTarget:self action:@selector(jumpEvent) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jumpButton];
}

- (void)jumpEvent {
    
    //取出stroryboard里面的控制器：
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"NavigationController_New" bundle:nil];
    //将取出的storyboard里面的控制器被所需的控制器指着。
    NavigationController_New *nextVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"NavigationController_New"];
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
