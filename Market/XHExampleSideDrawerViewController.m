//
//  XHExampleSideDrawerViewController.m
//  XHDrawerController
//
//  Created by Mars on 14-1-14.
//  Copyright (c) 2013年 Mars. All rights reserved.
//

#import "XHExampleSideDrawerViewController.h"
#import "XHExampleCenterSideDrawerViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"

@interface XHExampleSideDrawerViewController ()

@end

@implementation XHExampleSideDrawerViewController

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorColor = [UIColor clearColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

- (void)left {
    [self.drawerController toggleDrawerSide:XHDrawerSideLeft animated:YES completion:NULL];
}

- (void)right {
    [self.drawerController toggleDrawerSide:XHDrawerSideRight animated:YES completion:^(BOOL finished) {
        
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //fix 多语音环境
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Left", @"") style:UIBarButtonItemStyleBordered target:self action:@selector(left)];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Right", @"") style:UIBarButtonItemStyleBordered target:self action:@selector(right)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"菜单" style:UIBarButtonItemStyleBordered target:self action:@selector(left)];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"店铺介绍" style:UIBarButtonItemStyleBordered target:self action:@selector(right)];
}



- (id)init {
    self = [super init];
    if (self) {
        [self setDataSource:@[@"Marke", @"市场", @"推荐", @"关于"]];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDatasource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self dataSource] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    [cell setBackgroundColor:[UIColor clearColor]];
    [[cell textLabel] setTextColor:[UIColor whiteColor]];
    [[cell textLabel] setText:[self dataSource][[indexPath row]]];
    [cell setSelectedBackgroundView:[UIView new]];
    [[cell textLabel] setHighlightedTextColor:[UIColor purpleColor]];
    return cell;
}

#pragma mark - UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
//        OneViewController *centerViewController = [[OneViewController alloc] init];
//        [[centerViewController navigationItem] setTitle:[self dataSource][[indexPath row]]];
//        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:centerViewController];
//        self.drawerController.centerViewController = navigationController;
//        [self.drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
//            
//        }];
    } else   if (indexPath.row == 1) {
        XHExampleCenterSideDrawerViewController *centerViewController = [[XHExampleCenterSideDrawerViewController alloc] init];
        [[centerViewController navigationItem] setTitle:[self dataSource][[indexPath row]]];
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:centerViewController];
        self.drawerController.centerViewController = navigationController;
        [self.drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
            
        }];
    }else{
        TwoViewController *centerViewController = [[TwoViewController alloc] init];
        [[centerViewController navigationItem] setTitle:[self dataSource][[indexPath row]]];
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:centerViewController];
        self.drawerController.centerViewController = navigationController;
        [self.drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
            
        }];
    }
}

@end
