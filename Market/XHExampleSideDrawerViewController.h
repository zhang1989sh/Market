//
//  XHExampleSideDrawerViewController.h
//  XHDrawerController
//
//  Created by Mars on 14-1-14.
//  Copyright (c) 2013年 Mars. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XHExampleSideDrawerViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *dataSource;

@end
