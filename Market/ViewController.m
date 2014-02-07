//
//  ViewController.m
//  Market
//
//  Created by Mars on 14-1-23.
//  Copyright (c) 2014年 Mars. All rights reserved.
//
#import "ViewController.h"

#import "XHExampleLeftSideDrawerViewController.h"
#import "XHExampleRightSideDrawerViewController.h"
#import "XHExampleCenterSideDrawerViewController.h"

@interface ViewController ()

@end

@implementation ViewController


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
    
    XHDrawerController *drawerController = [[XHDrawerController alloc] init];
    drawerController.springAnimationOn = YES;
    
    XHExampleLeftSideDrawerViewController *leftSideDrawerViewController = [[XHExampleLeftSideDrawerViewController alloc] init];
    
    XHExampleRightSideDrawerViewController *rightSideDrawerViewController = [[XHExampleRightSideDrawerViewController alloc] init];
    
    XHExampleCenterSideDrawerViewController *centerSideDrawerViewController = [[XHExampleCenterSideDrawerViewController alloc] init];
    
    drawerController.leftViewController = leftSideDrawerViewController;
    drawerController.rightViewController = rightSideDrawerViewController;
    drawerController.centerViewController = [[UINavigationController alloc] initWithRootViewController:centerSideDrawerViewController];
    
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MenuBackground"]];
    [backgroundImageView setContentMode:UIViewContentModeCenter];
    drawerController.backgroundView = backgroundImageView;
    
    
    
    
    UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
    window.tag = 0;
    [window addSubview:drawerController.view];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
