//
//  APIStringMacros.h
//  Demo
//
//  Created by liu David on 16/7/25.
//  Copyright © 2016年 Yan. All rights reserved.
//

#ifndef APIStringMacros_h
#define APIStringMacros_h

//接口名称相关

#ifdef DEBUG
//Debug状态下的测试API
#define API_BASE_URL  @"http://test-api.ok-keji.com"

#else
//Release状态下的线上API
#define API_BASE_URL  @"https://api.ok-keji.com"

#endif

//接口
#define GET_CONTENT_DETAIL      @"channel/getContentDetail" //获取内容详情(含上一个和下一个)

#define GET_COMMENT_LIST        @"comment/getCommentList"   //获取评论列表

#define COMMENT_LOGIN           @"comment/login"            //获取评论列表

#define COMMENT_PUBLISH         @"comment/publish"          //发布评论

#define COMMENT_DELETE          @"comment/delComment"       //删除评论

#define LOGINOUT                @"common/logout"            //登出


#endif /* APIStringMacros_h */
