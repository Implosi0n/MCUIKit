//
//  MCUISliderThumbView.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/20/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUISliderThumbView.h"

@interface MCUISliderThumbView ()

@property (strong) void(^callback)(MCUISliderThumbView*, UITouch*, int);

@property (assign) bool isOut;

@end

@implementation MCUISliderThumbView

@synthesize callback = _callback;
@synthesize isOut = _isOut;

- (instancetype)initWithImage:(UIImage *)image callBack:(void(^)(MCUISliderThumbView *, UITouch *, int))callback {
	UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
	if (self = [super initWithFrame:imageView.bounds]) {
		[self addSubview:imageView];
		self.callback = callback;
	}
	[imageView release];
	return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *aTouch = [touches anyObject];
	self.callback(self, aTouch, 0);
	self.isOut = !CGRectContainsPoint(self.bounds, [aTouch locationInView:self]);
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *aTouch = [touches anyObject];
	self.callback(self, aTouch, 1);
	self.isOut = !((0 < [aTouch locationInView:self].x) && ([aTouch locationInView:self].x < self.bounds.size.width));
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *aTouch = [touches anyObject];
	self.callback(self, aTouch, 2);
}

@end
