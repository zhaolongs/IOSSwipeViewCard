//
//  SMSwipeView.h
//  Base
//
//  Created by whbt_mac on 15/12/28.
//  Copyright © 2015年 StoneMover. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SMSwipeView;

@protocol SMSwipeDelegate <NSObject>

@required
//获取显示数据内容
-(UITableViewCell*)SMSwipeGetView:(SMSwipeView*)swipe withIndex:(int)index;
//获取数据源总量
-(NSInteger)SMSwipeGetTotaleNum:(SMSwipeView*)swipe;
@end

@interface SMSwipeView : UIView

@property(nonatomic,weak)id<SMSwipeDelegate> delegate;

//层叠透明方式显示 默认NO
@property(nonatomic,assign)BOOL isStackCard;
//加载方法
-(void)reloadData;
//根据id获取缓存的cell
-(UITableViewCell*)dequeueReusableUIViewWithIdentifier:(NSString*)identifier;

@end
