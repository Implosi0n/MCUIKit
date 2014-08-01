//
//  MCUISwitch.h
//  EmendoMC
//
//  Created by Silas Schwarz on 7/19/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCUISwitch : UIView

@property (assign) BOOL on;

- (instancetype)initWithFrame:(CGRect)frame callback:(void(^)(MCUISwitch *sender, BOOL on))callback;

@end
