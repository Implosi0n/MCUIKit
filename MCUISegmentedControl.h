//
//  MCUISegmentedControl.h
//  EmendoMC
//
//  Created by Silas Schwarz on 7/26/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCUISegmentedControl : UIView

@property (assign) NSInteger selectedSegmentIndex;

- (instancetype)initWithFrame:(CGRect)frame segments:(NSArray *)segments callback:(void(^)(MCUISegmentedControl *, NSInteger))callback;

@end
