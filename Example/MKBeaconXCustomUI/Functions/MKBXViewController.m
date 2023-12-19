//
//  MKBXViewController.m
//  MKBeaconXCustomUI_Example
//
//  Created by aa on 2023/12/19.
//  Copyright © 2023 aadyx2007@163.com. All rights reserved.
//

#import "MKBXViewController.h"

#import "MKMacroDefines.h"

#import "MKBXScanFilterView.h"

@interface MKBXViewController ()

@end

@implementation MKBXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)leftButtonMethod {
    [MKBXScanFilterView showSearchName:@"MOKO" macAddress:@"11:22" rssi:-127 searchBlock:^(NSString * _Nonnull searchName, NSString * _Nonnull searchMacAddress, NSInteger searchRssi) {
        NSLog(@"%@-%@-%@",searchName,searchMacAddress,@(searchRssi));
    }];
    
    NSLog(@"%f",kNavigationBarHeight);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
