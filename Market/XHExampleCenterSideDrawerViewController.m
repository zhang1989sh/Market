//
//  XHExampleCenterSideDrawerViewController.m
//  XHDrawerController
//
//  Created by Mars on 14-1-14.
//  Copyright (c) 2013年 Mars. All rights reserved.
//

#import <iAd/iAd.h>
#import "MarketCell.h"
#import "XHExampleCenterSideDrawerViewController.h"

@interface XHExampleCenterSideDrawerViewController ()<ADBannerViewDelegate>
{
    NSArray *_arr;
}
@property (retain, nonatomic) IBOutlet ADBannerView *adView;
@property (nonatomic, assign) BOOL bannerIsVisible;
@end

@implementation XHExampleCenterSideDrawerViewController

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
    self.bannerIsVisible = NO;
    
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    _arr = [[NSArray alloc] initWithObjects:@"1",@"1",@"1",@"1",@"1", nil];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)bannerViewDidLoadAd:(ADBannerView *)banner{
    NSLog(@"OK");
    if (!self.bannerIsVisible) {
        [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
        //banner is invisible now and moved out of the screen on 50px
        banner.frame = CGRectOffset(banner.frame, 0, 50);
        [UIView commitAnimations];
        self.bannerIsVisible = YES;
    }
}
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    NSLog(@"ERROR");
    if (self.bannerIsVisible) {
        [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
        //banner is visible and we move it out of the screen, due to connection issue
        banner.frame = CGRectOffset(banner.frame, 0, -50);
        [UIView commitAnimations];
        self.bannerIsVisible = NO;
    }
}
- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave{
    //banner view is beginning an ad action
    NSLog(@"Begin");
    BOOL shouldExecuteAction = YES;
    if (!willLeave && shouldExecuteAction) {
        //shop all interactive processes in the app
    }
    return shouldExecuteAction;
}
- (void)bannerViewActionDidFinish:(ADBannerView *)banner{
    //resume everyting you have stopped
    NSLog(@"Finish");
}




#pragma mark - UITableViewDatasource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_arr count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //在此使用样本Cell计算高度。

    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"MarketCell";
    
    // 自定义cell
    
    MarketCell *cell = (MarketCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil){
        
        // 这种方式，将会查找响应的xib文件，将不会调用initWithStyle方法
        
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"MarketCell" owner:nil options:nil];
        
        cell = [array objectAtIndex:0];
        
    }
    return cell;
}




#pragma mark - UITableViewDelegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
