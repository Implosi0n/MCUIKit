//
//  MCUISwitch.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/19/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUISwitch.h"

#import "UIImage+MCUI.h"

#import "NSObject+MCUIKit.h"

@interface MCUISwitch () {
	BOOL _on;
}

@property (strong) UIImageView *switchView;
@property (strong) UIImage *onImage;
@property (strong) UIImage *offImage;

@property (strong) void (^callback)(MCUISwitch *, BOOL);

@end

UIImage *onImage;
UIImage *offImage;

#define kSwitchSize ((CGSize){ .width = 38.0 * 2.0, .height = 19.0 * 2.0 })

@implementation MCUISwitch

@synthesize switchView = _switchView;
@synthesize onImage = _onImage;
@synthesize offImage = _offImage;
@synthesize callback = _callback;

+ (void)load {
	UIImage *touchgui = [UIImage mcui_imageNamed:@"touchgui.png"];
	offImage = [touchgui mcui_subImageWithFrame:CGRectMake(160, 206, kSwitchSize.width/2.0, kSwitchSize.height/2.0)];
	onImage = [touchgui mcui_subImageWithFrame:CGRectMake(160 + kSwitchSize.width/2.0, 206, kSwitchSize.width/2.0, kSwitchSize.height/2.0)];
}

- (void)tapped {
	self.on = !self.on;
	self.callback(self, self.on);
}

- (instancetype)initWithFrame:(CGRect)frame callback:(void (^)(MCUISwitch *, BOOL))callback {
    if (self = [super initWithFrame:(CGRect){ .origin = frame.origin, .size = kSwitchSize }]) {
		self.callback = callback;
		self.onImage = onImage;
		self.offImage = offImage;
		self.switchView = [[[UIImageView alloc] initWithFrame:self.bounds] mcui_autorelease];
		self.switchView.layer.magnificationFilter = kCAFilterNearest;
		self.on = NO;
		[self addSubview:self.switchView];
		UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped)];
		[self addGestureRecognizer:tapRecognizer];
    }
    return self;
}

- (BOOL)on {
	return _on;
}

- (void)setOn:(BOOL)on {
	_on = on;
	[self.switchView setImage:_on ? self.onImage : self.offImage];
}

- (void)dealloc {
	[super mcui_dealloc];
}

@end
