//
//  XHZoomDrawerView.h
//  XHDrawerController
//
//  Created by Mars on 14-1-14.
//  Copyright (c) 2013年 Mars. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface XHZoomDrawerView : UIView

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) UIView *contentContainerView;
@property (nonatomic, strong) UIView *leftContainerView;
@property (nonatomic, strong) UIView *rightContainerView;
@property (nonatomic, strong) UIButton *contentContainerButton;

@end
