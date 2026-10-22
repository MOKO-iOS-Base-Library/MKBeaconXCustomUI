//
//  MKBXUpdateController.h
//  MKBeaconXCustomUI_Example
//
//  Created by aa on 2021/8/17.
//  Copyright © 2021 aadyx2007@163.com. All rights reserved.
//

#import "MKBaseViewController.h"

#import "MKBXDFUProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MKBXUpdateController : MKBaseViewController

@property (nonatomic, strong)id <MKBXDFUProtocol>protocol;

@end

NS_ASSUME_NONNULL_END
