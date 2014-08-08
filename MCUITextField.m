//
//  MCUITextField.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/22/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUITextField.h"
#import "MCUILabel.h"

#import "MCUIKeyboardViewController.h"

#import "NSObject+MCUIKit.h"

@interface MCUITextField ()

@property (retain) MCUILabel *label;
@property (copy) void (^callback)(MCUITextField*, NSString*);

@end

@implementation MCUITextField

@synthesize label = _label;
@synthesize callback = _callback;

- (void)tapped {
	MCUIKeyboardViewController *keyboardViewController = [[MCUIKeyboardViewController alloc] initWithName:self.name textField:self];
	keyboardViewController.text = [[self.label.text mutableCopy] mcui_autorelease];
	[[[UIApplication sharedApplication].delegate.window rootViewController] presentViewController:keyboardViewController animated:YES completion:^{
		
	}];
	[keyboardViewController mcui_release];
}

- (instancetype)initWithFrame:(CGRect)frame callback:(void (^)(MCUITextField*, NSString*))callback {
    if (self = [super initWithFrame:frame]) {
		self.callback = [callback mcui_retain];
		self.name = @"";
		self.layer.borderWidth = 2.0;
		self.layer.borderColor = [UIColor colorWithRed:103.0/255.0 green:96.0/255.0 blue:96.0/255.0 alpha:1.0].CGColor;
		self.backgroundColor = [UIColor colorWithRed:55.0/255.0 green:53.0/255.0 blue:53.0/255.0 alpha:1.0];
		self.label = [[[MCUILabel alloc] initWithFrame:CGRectMake(10, 10, 370.0/2.0, 16.0)] mcui_autorelease];
		self.label.text = @"";
		[self addSubview:self.label];
		[self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped)]];
    }
    return self;
}

- (NSString *)text {
	return self.label.text;
}

- (void)setText:(NSString *)text {
	self.label.text = text;
}

- (void)callBackWithText:(NSString *)text {
	self.callback(self, text);
}

- (void)dealloc {
	[self.callback mcui_release];
	[super mcui_dealloc];
}

@end
