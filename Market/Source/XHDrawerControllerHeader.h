//
//  XHDrawerControllerHeader.h
//  XHDrawerController
//
//  Created by Mars on 14-1-14.
//  Copyright (c) 2013年 Mars. All rights reserved.
//

#ifndef XHDrawerController_XHDrawerControllerHeader_h
#define XHDrawerController_XHDrawerControllerHeader_h
static const CGFloat XHContentContainerViewOriginX = 180.0f;

static inline void xh_UIViewSetFrameOriginX(UIView *view, CGFloat originX) {
    [view setFrame:CGRectMake(originX, CGRectGetMinY([view frame]), CGRectGetWidth([view frame]), CGRectGetHeight([view frame]))];
}

#endif
