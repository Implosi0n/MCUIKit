//
//  MCUILabel.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/21/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUILabel.h"

#import "NSObject+MCUIKit.h"
#import "NSBundle+MCUI.h"

#define Color(_red, _green, _blue, _alpha) [UIColor colorWithRed:_red ## .0 / 255.0 green:_green ## .0/255.0 blue:_blue ## .0/255.0 alpha:_alpha ## .0/255.0]

@implementation MCUILabel {
	MCUILabelStyle _style;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		self.style = kMCUILabelStyleShadowed;
		self.font = [UIFont fontWithName:@"Minecraft" size:16.0];
    }
    return self;
}

- (MCUILabelStyle)style {
	return _style;
}

- (void)setStyle:(MCUILabelStyle)style {
	_style = style;
	UIColor *mainColor = [UIColor blackColor];
	UIColor *altColor = [UIColor blackColor];
	CGSize offset = CGSizeMake(0, 0);
	switch (style) {
		case kMCUILabelStylePlain:
			break;
		case kMCUILabelStyleShadowed:
			mainColor = Color(203, 203, 203, 255);
			altColor = Color(50, 50, 50, 255);
			offset = CGSizeMake(2, 2);
			break;
		case kMCUILabelStyleMenu:
			mainColor = Color(253, 253, 253, 255);
			altColor = Color(62, 62, 62, 255);
			offset = CGSizeMake(2, 2);
			break;
		default:
			break;
	}
	self.textColor = mainColor;
	self.shadowColor = altColor;
	self.shadowOffset = offset;
}

@end
