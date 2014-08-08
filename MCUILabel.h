//
//  MCUILabel.h
//  EmendoMC
//
//  Created by Silas Schwarz on 7/21/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
	kMCUILabelStylePlain = 0,
	kMCUILabelStyleShadowed = 1,
	kMCUILabelStyleMenu = 2,
	kMCUILabelStyleSection = 3,
	kMCUILabelStyleOption = 4
} MCUILabelStyle;

@interface MCUILabel : UILabel

@property (assign) MCUILabelStyle style;

@end
