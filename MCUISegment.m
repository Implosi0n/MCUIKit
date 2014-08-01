//
//  MCUISegment.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/26/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUISegment.h"
#import "MCUILabel.h"

#import "UIImage+MCUI.h"

#define kButtonTitleMainColor [UIColor colorWithRed:222.0/255.0 green:222.0/255.0 blue:222.0/255 alpha:1.0]
#define kButtonTitleAltColor [UIColor colorWithRed:55.0/255.0 green:55.0/255.0 blue:55.0/255 alpha:1.0]

#define kButtonTitleSelectedMainColor [UIColor colorWithRed:223.0/255.0 green:223.0/255.0 blue:159.0/255 alpha:1.0]
#define kButtonTitleSelectedAltColor [UIColor colorWithRed:62.0/255.0 green:62.0/255.0 blue:39.0/255 alpha:1.0]

@interface MCUISegment () {
	BOOL _pressed;
}

@property (strong) UIImageView *backgroundView;
@property (strong) MCUILabel *nameLabel;

@property (strong) UIImage *regularBackground;
@property (strong) UIImage *pressedBackground;

@property (strong) void(^callback)(MCUISegment*);

@end

@implementation MCUISegment

@synthesize backgroundView = _backgroundView;
@synthesize nameLabel = _nameLabel;
@synthesize regularBackground = _regularBackground;
@synthesize pressedBackground = _pressedBackground;
@synthesize callback = _callback;

- (instancetype)initWithFrame:(CGRect)frame name:(NSString *)name callback:(void(^)(MCUISegment*))callback {
    if (self = [super initWithFrame:frame]) {
		self.callback = callback;
		UIImage *spriteSheet = [UIImage mcui_imageNamed:@"spritesheet.png"];
		self.pressedBackground = [[[spriteSheet mcui_subImageWithFrame:CGRectMake(0, 32, 8, 8)] mcui_resize:CGSizeMake(16, 16)] resizableImageWithCapInsets:UIEdgeInsetsMake(4, 4, 4, 4)];
		self.regularBackground = [[[spriteSheet mcui_subImageWithFrame:CGRectMake(8, 32, 8, 8)] mcui_resize:CGSizeMake(16, 16)] resizableImageWithCapInsets:UIEdgeInsetsMake(4, 4, 4, 4)];
		
		self.nameLabel = [[[MCUILabel alloc] initWithFrame:CGRectMake(0, 0, [name sizeWithFont:[UIFont fontWithName:@"Minecraft" size:16.0]].width, 16)] autorelease];
		self.nameLabel.text = name;
		[self.nameLabel setFont:[UIFont fontWithName:@"Minecraft" size:16.0]];
		[self.nameLabel setShadowOffset:CGSizeMake(2, 2)];
		
		self.backgroundView = [[[UIImageView alloc] initWithFrame:self.bounds] autorelease];
		[self addSubview:self.backgroundView];
		[self addSubview:self.nameLabel];
		[self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped)]];
		self.pressed = NO;
    }
    return self;
}

- (void)tapped {
	self.callback(self);
}

- (BOOL)pressed {
	return _pressed;
}

- (void)setPressed:(BOOL)pressed {
	_pressed = pressed;
	if (!pressed) {
		self.nameLabel.frame = (CGRect){ .origin = CGPointMake((self.frame.size.width - self.nameLabel.frame.size.width)/2.0, (self.frame.size.height - self.nameLabel.frame.size.height)/2.0), .size = self.nameLabel.frame.size };
		[self.nameLabel setTextColor:kButtonTitleMainColor];
		[self.nameLabel setShadowColor:kButtonTitleAltColor];
		[self.backgroundView setImage:self.regularBackground];
	} else {
		self.nameLabel.frame = (CGRect){ .origin = CGPointMake((self.frame.size.width - self.nameLabel.frame.size.width)/2.0 + 1, (self.frame.size.height - self.nameLabel.frame.size.height + 2)/2.0 + 1), .size = self.nameLabel.frame.size };
		[self.nameLabel setTextColor:kButtonTitleSelectedMainColor];
		[self.nameLabel setShadowColor:kButtonTitleSelectedAltColor];
		[self.backgroundView setImage:self.pressedBackground];
	}
}

@end
