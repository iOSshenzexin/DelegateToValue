//
//  ZXSecondViewController.m
//  代理传值
//
//  Created by 杨晓婧 on 16/5/18.
//  Copyright © 2016年 QingDaoShangTong. All rights reserved.
//

#import "ZXSecondViewController.h"

@interface ZXSecondViewController ()
- (IBAction)btnReturnClick:(id)sender;
- (IBAction)btnChangValueClick:(id)sender;

@end

@implementation ZXSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
+(ZXSecondViewController *)sharedViewController{
    static ZXSecondViewController *vc = nil;
    if (vc == nil) {
        vc = [[ZXSecondViewController alloc] init];
    }
    return vc;
}
- (IBAction)btnReturnClick:(id)sender {
}

- (IBAction)btnChangValueClick:(id)sender {
    self.number = 10;
    if ([self.delegate respondsToSelector:@selector(passValueToFrontPage:)]) {
        [self.delegate passValueToFrontPage:self];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
