//
//  MCUIButton.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/19/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUIButton.h"
#import "UIImage+MCUI.h"

#import "NSObject+MCUIKit.h"

#define kButtonTitleMainColor [UIColor colorWithRed:222.0/255.0 green:222.0/255.0 blue:222.0/255 alpha:1.0]
#define kButtonTitleAltColor [UIColor colorWithRed:55.0/255.0 green:55.0/255.0 blue:55.0/255 alpha:1.0]

#define kButtonTitleSelectedMainColor [UIColor colorWithRed:223.0/255.0 green:223.0/255.0 blue:159.0/255 alpha:1.0]
#define kButtonTitleSelectedAltColor [UIColor colorWithRed:62.0/255.0 green:62.0/255.0 blue:39.0/255 alpha:1.0]

@interface MCUIButton ()

@property (strong) void (^callback)(MCUIButton *);

@end

@implementation MCUIButton

@synthesize callback = _callback;

- (void)moveDown:(UIButton *)sender {
	[sender setTitleEdgeInsets:UIEdgeInsetsMake((self.frame.size.height - self.titleLabel.frame.size.height)/2.0 + 2, (self.frame.size.width - self.titleLabel.frame.size.width)/2.0 + 1, 0, 0)];
	[sender setImageEdgeInsets:UIEdgeInsetsMake((self.frame.size.height - self.imageView.image.size.height)/2.0 + 2, (self.frame.size.width - self.imageView.image.size.width)/2.0 + 1, 0, 0)];
}

- (void)moveBack:(UIButton *)sender {
	[sender setTitleEdgeInsets:UIEdgeInsetsMake((self.frame.size.height - self.titleLabel.frame.size.height)/2.0, (self.frame.size.width - self.titleLabel.frame.size.width)/2.0 + 1, 0, 0)];
	[sender setImageEdgeInsets:UIEdgeInsetsMake((self.frame.size.height - self.imageView.image.size.height)/2.0, (self.frame.size.width - self.imageView.image.size.width)/2.0 + 1, 0, 0)];
	self.callback(self);
}

- (void)titleBack:(UIButton *)sender {
	[sender setTitleEdgeInsets:UIEdgeInsetsMake((self.frame.size.height - self.titleLabel.frame.size.height)/2.0, (self.frame.size.width - self.titleLabel.frame.size.width)/2.0 + 1, 0, 0)];
	[sender setImageEdgeInsets:UIEdgeInsetsMake((self.frame.size.height - self.imageView.image.size.height)/2.0, (self.frame.size.width - self.imageView.image.size.width)/2.0 + 1, 0, 0)];
}

- (instancetype)initWithFrame:(CGRect)frame callback:(void (^)(MCUIButton *))callback {
    if (self = [super initWithFrame:frame]) {
		self.callback = [callback mcui_retain];
		UIImage *spritesheet = [UIImage mcui_imageNamed:@"spritesheet.png"];
		UIImage *pressedImage = [spritesheet mcui_subImageWithFrame:CGRectMake(0, 32, 8, 8)];
		pressedImage = [pressedImage mcui_resize:CGSizeMake(16, 16)];
		UIImage *unpressedImage = [spritesheet mcui_subImageWithFrame:CGRectMake(8, 32, 8, 8)];
		unpressedImage = [unpressedImage mcui_resize:CGSizeMake(16, 16)];
		
		[self setBackgroundImage:[unpressedImage resizableImageWithCapInsets:UIEdgeInsetsMake(4, 4, 4, 4)] forState:UIControlStateNormal];
		[self setBackgroundImage:[pressedImage resizableImageWithCapInsets:UIEdgeInsetsMake(4, 4, 4, 4)] forState:UIControlStateHighlighted];
		
		[self.titleLabel setFont:[UIFont fontWithName:@"Minecraft" size:16.0]];
		[self setTitleColor:kButtonTitleMainColor forState:UIControlStateNormal];
		[self setTitleColor:kButtonTitleSelectedMainColor forState:UIControlStateHighlighted];
		[self setTitleShadowColor:kButtonTitleAltColor forState:UIControlStateNormal];
		[self setTitleShadowColor:kButtonTitleSelectedAltColor forState:UIControlStateHighlighted];
		[self.titleLabel setShadowOffset:CGSizeMake(2, 2)];
		[self.titleLabel setShadowOffset:CGSizeMake(2, 2)];
		
		[self setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
		[self setContentVerticalAlignment:UIControlContentVerticalAlignmentTop];
		
		[self addTarget:self action:@selector(moveDown:) forControlEvents:UIControlEventTouchDown | UIControlEventTouchDragEnter];
		[self addTarget:self action:@selector(moveBack:) forControlEvents:UIControlEventTouchUpInside];
		[self addTarget:self action:@selector(titleBack:) forControlEvents:UIControlEventTouchDragExit];
    }
    return self;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
	[super setTitle:title forState:state];
	
	[self setTitleEdgeInsets:UIEdgeInsetsMake((self.frame.size.height - self.titleLabel.frame.size.height)/2.0, (self.frame.size.width - self.titleLabel.frame.size.width)/2.0 + 1, 0, 0)];
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state {
	[super setImage:image forState:state];
	[self setImageEdgeInsets:UIEdgeInsetsMake((self.frame.size.height - image.size.height)/2.0, (self.frame.size.width - image.size.width)/2.0 + 1, 0, 0)];
}

- (void)mcui_dealloc {
	[self.callback mcui_release];
	[super mcui_dealloc];
}

@end
