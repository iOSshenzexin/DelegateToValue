//
//  ZXSecondViewController.h
//  代理传值
//
//  Created by 杨晓婧 on 16/5/18.
//  Copyright © 2016年 QingDaoShangTong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZXSecondViewController;
@protocol ZXChangeValueDelegate <NSObject>

@optional

- (void)passValueToFrontPage:(ZXSecondViewController *)vc;

@end
@interface ZXSecondViewController : UIViewController
@property (nonatomic,assign) int number;
@property (nonatomic,weak) id <ZXChangeValueDelegate> delegate;
+(ZXSecondViewController *)sharedViewController;
@end
