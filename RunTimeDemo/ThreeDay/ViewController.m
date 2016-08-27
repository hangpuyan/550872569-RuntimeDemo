//
//  ViewController.m
//  RunTimeDemo
//
//  Created by YY on 16/8/27.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = COLOR_WHITE;
    [self configUI];
}

- (void)configUI {
    
    UIView *viewRed = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:viewRed];
    viewRed.backgroundColor = [UIColor yy_colorWithHex:100];
    
    UIView *viewGreen = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:viewGreen];
    viewGreen.backgroundColor = [UIColor yy_colorWithHex:0x00ff00];
    
    UIView *viewBlue = [[UIView alloc]initWithFrame:CGRectMake(200, 200, 100, 100)];
    [self.view addSubview:viewBlue];
    viewBlue.backgroundColor = [UIColor yy_colorWithHex:0x0000ff];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(300, 300, 100, 100)];
    [self.view addSubview:imageView];
    /** 在此调用setImage: 实际在运行时执行的是yy_setImage:*/
    [imageView setImage:[UIImage imageNamed:@"firstLaunch1"]];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"self%@",self);
}

@end
