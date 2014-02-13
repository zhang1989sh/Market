//
//  ShopDetailViewViewController.m
//  Market
//
//  Created by Mars on 14-2-5.
//  Copyright (c) 2014年 Mars. All rights reserved.
//


#import "ShopDetailCell.h"
#import "ShopDetailViewViewController.h"

@interface ShopDetailViewViewController ()

@end

@implementation ShopDetailViewViewController

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
    self.title = @"商品";
    // Do any additional setup after loading the view from its nib.
}



//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//
//
//}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(310,180);
}


- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(8, 8, 0, 8);
}

//水平 间距
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
//{
//    return 1;
//}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 6;
}



- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section;
{
    return 1;
}



//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
////    NSMutableArray *data = [self.dataArray objectAtIndex:indexPath.section];
////    NSString *cellData = [data objectAtIndex:indexPath.row];
//    static NSString *cellIdentifier = @"ShopDetailCell";
//    ShopDetailCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
//    return cell;
//}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
//        ShopDetailCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"ShopDetailCell" forIndexPath:indexPath];
//        return cell;
    
    
    UINib *nib = [UINib nibWithNibName:@"ShopDetailCell"
                                bundle: [NSBundle mainBundle]];
    [collectionView registerNib:nib forCellWithReuseIdentifier:@"ShopCell"];
    ShopDetailCell *cell = [[ShopDetailCell alloc]init];
    
    // Set up the reuse identifier
    cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"ShopCell"
                                                     forIndexPath:indexPath];
    return cell;
    
    
    // Register nib file for the cell
//    UINib *nib = [UINib nibWithNibName:@"ReportFilterCollectionViewCell"
//                                bundle: [NSBundle mainBundle]];
//    [collectionView registerNib:nib forCellWithReuseIdentifier:@"reportFilterCell"];
//    ReportFilterViewControllerCell *cell = [[ReportFilterViewControllerCell alloc]init];
//    
//    // Set up the reuse identifier
//    cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"reportFilterCell"
//                                                     forIndexPath:indexPath];
}


- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
