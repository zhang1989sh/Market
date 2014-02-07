//
//  OneViewController.m
//  Market
//
//  Created by Mars on 14-1-24.
//  Copyright (c) 2014年 Mars. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    NSLog(@"one");
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    lable.text = @"one";
    [self.view addSubview:lable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
