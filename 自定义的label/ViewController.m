//
//  ViewController.m
//  自定义的label
//
//  Created by shiyong on 17/10/17.
//  Copyright © 2017年 SY. All rights reserved.
//

#import "ViewController.h"
#import "BBFlashCtntLabel.h"
#import "CodeView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //直接调用系统的label做跑马灯效果，但是这个要注意就是内容过多就会显示不全
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 50)];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(0,10, self.view.bounds.size.width-100, 30)];
    label3.text =@"噜啦啦噜啦啦噜啦噜啦噜，噜啦噜啦噜啦噜啦噜啦噜~~~";
    [view addSubview:label3];
    
    CGRect frame = label3.frame;
    frame.origin.x = 0;
    label3.frame = frame;
    [UIView beginAnimations:@"testAnimation"context:NULL];
    [UIView setAnimationDuration:8.8f];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationRepeatCount:999999];
    frame = label3.frame;
    frame.origin.x =self.view.bounds.size.width-10;
    label3.frame = frame;
    [UIView commitAnimations];
    
    //继承UIlabel的类，完备了上边的缺陷
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(50, 300, self.view.bounds.size.width-100, 50)];
    view2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view2];

    BBFlashCtntLabel *label = [[BBFlashCtntLabel alloc]initWithFrame:CGRectMake(0, 10, self.view.bounds.size.width-100, 30)];
    label.text = @"噜啦啦噜啦啦噜啦噜啦噜，噜啦噜啦噜啦噜啦噜啦噜~~~";
    [view2 addSubview:label];
    
    //验证码
    CodeView *codeView = [[CodeView alloc]initWithFrame:CGRectMake(100, 400, 80, 30)];
    [self.view addSubview:codeView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
