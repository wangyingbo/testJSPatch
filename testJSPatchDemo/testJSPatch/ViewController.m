//
//  ViewController.m
//  testJSPatch
//
//  Created by 王迎博 on 16/8/23.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *myView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
    self.myView.backgroundColor = [UIColor lightGrayColor];
    self.myView.layer.cornerRadius = 5.0;
    [self.view addSubview:self.myView];
    
    [self changeColor];
}

- (void)changeColor
{
    self.myView.backgroundColor = [UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
