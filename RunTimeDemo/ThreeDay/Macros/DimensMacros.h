//
//  DimensMacros.h
//  Demo
//
//  Created by liu David on 16/7/25.
//  Copyright © 2016年 Yan. All rights reserved.
//

#ifndef DimensMacros_h
#define DimensMacros_h


//状态栏高度
#define STATUS_BAR_HEIGHT 20
//NavBar高度
#define NAVIGATION_BAR_HEIGHT 44
//状态栏 ＋ 导航栏 高度
#define STATUS_AND_NAVIGATION_HEIGHT ((STATUS_BAR_HEIGHT) + (NAVIGATION_BAR_HEIGHT))

//屏幕 rect
#define SCREEN_RECT ([UIScreen mainScreen].bounds)                                   //屏幕rect
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)                       //屏幕width
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)                     //屏幕height
#define CONTENT_HEIGHT (SCREEN_HEIGHT - NAVIGATION_BAR_HEIGHT - STATUS_BAR_HEIGHT)   //view

//屏幕分辨率
#define SCREEN_RESOLUTION (SCREEN_WIDTH * SCREEN_HEIGHT * ([UIScreen mainScreen].scale))

#define kSpaceTop     10
#define kSpaceLeft    10
#define kSpaceRight   10
#define kSpaceBottom  10
#define kNormolFont  14  //字体
#define kTextFieldHeight  40 //注册页textfieldH


//广告栏高度
#define BANNER_HEIGHT 215

#define STYLEPAGE_HEIGHT 21

#define SMALLTV_HEIGHT 77

#define SMALLTV_WIDTH 110

#define FOLLOW_HEIGHT 220

#define SUBCHANNEL_HEIGHT 62


#define contentOffSet_x _scrollView.contentOffset.x
#define frame_width _scrollView.frame.size.width
#define contentSize_x _scrollView.contentSize.width

#endif /* DimensMacros_h */
