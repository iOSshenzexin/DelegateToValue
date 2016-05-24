//
//  ViewController.m
//  代理传值
//
//  Created by 杨晓婧 on 16/5/18.
//  Copyright © 2016年 QingDaoShangTong. All rights reserved.
//

#import "ViewController.h"
#import "ZXSecondViewController.h"
@interface ViewController ()<ZXChangeValueDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lbl;
- (IBAction)btnClicked:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZXSecondViewController *vc = [ZXSecondViewController sharedViewController];
    vc.delegate = self;
}

- (IBAction)btnClicked:(id)sender {
    [self presentViewController:[ZXSecondViewController sharedViewController] animated:YES completion:nil];
    
}

-(void)passValueToFrontPage:(ZXSecondViewController *)vc{
    self.lbl.text = [NSString stringWithFormat:@"%d",vc.number];
}

@end
