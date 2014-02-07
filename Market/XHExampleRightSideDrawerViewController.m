//
//  XHExampleRightSideDrawerViewController.m
//  XHDrawerController
//
//  Created by Mars on 14-1-14.
//  Copyright (c) 2013年 Mars. All rights reserved.
//

#import "XHExampleRightSideDrawerViewController.h"

@interface XHExampleRightSideDrawerViewController ()

@end

@implementation XHExampleRightSideDrawerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    CGRect tableViewFrame = self.tableView.frame;
    tableViewFrame.origin.y = 95;
    tableViewFrame.size.height = 377;
    self.tableView.frame = tableViewFrame;
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
