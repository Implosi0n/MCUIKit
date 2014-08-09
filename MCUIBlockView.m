//
//  MCUIBlockView.m
//  MCUIKit
//
//  Created by Silas Schwarz on 8/6/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUIBlockView.h"
#import "NSObject+MCUIKit.h"
#import "UIImage+MCUI.h"

@implementation MCUIBlockView {
	UIImageView *topImageView;
	UIImageView *leftImageView;
	UIImageView *rightImageView;
}

- (instancetype)initWithFrame:(CGRect)frame id:(uint16_t)itemID damage:(uint16_t)damage {
	if (self = [super initWithFrame:frame]) {
		CGFloat faceWidth = sqrt(self.frame.size.width * self.frame.size.width / 2);
		
		CGFloat theta = M_PI / 6.0 - 0.185; /* AAAAAAAAHHH Please, somebody stop me */
		
		CATransform3D rotateAndTilt = CATransform3DMakeRotation(-M_PI/4, 0, 1, 0);
		rotateAndTilt = CATransform3DConcat(rotateAndTilt, CATransform3DMakeRotation(theta, 1, 0, 0));
		
		NSArray *images = [UIImage mcui_imagesWithID:itemID damage:damage];
		
		topImageView = [[UIImageView alloc] initWithImage:[images[0] mcui_resize:CGSizeMake(faceWidth, faceWidth)]];
		topImageView.frame = (CGRect){ .origin = CGPointZero, .size = topImageView.frame.size };
		topImageView.layer.anchorPoint = CGPointMake(0, 0);
		[self addSubview:topImageView];
		
		topImageView.layer.transform = CATransform3DMakeRotation(M_PI/2, 1, 0, 0);
		topImageView.layer.transform = CATransform3DConcat(topImageView.layer.transform, rotateAndTilt);
		
		leftImageView = [[UIImageView alloc] initWithImage:[images[1] mcui_resize:CGSizeMake(faceWidth, faceWidth)]];
		leftImageView.frame = (CGRect){ .origin = CGPointZero, .size = leftImageView.frame.size };
		leftImageView.layer.anchorPoint = CGPointMake(0, 0);
		[self addSubview:leftImageView];
		
		leftImageView.layer.transform = CATransform3DMakeRotation(-M_PI/2, 0, 1, 0);
		leftImageView.layer.transform = CATransform3DConcat(leftImageView.layer.transform, rotateAndTilt);
		
		UIView *leftDarkener = [[[UIView alloc] initWithFrame:leftImageView.bounds] mcui_autorelease];
		leftDarkener.backgroundColor = [UIColor blackColor];
		leftDarkener.layer.opacity = 0.25;
		
		[leftImageView addSubview:leftDarkener];
		
		rightImageView = [[UIImageView alloc] initWithImage:[images[2] mcui_resize:CGSizeMake(faceWidth, faceWidth)]];
		rightImageView.frame = (CGRect){ .origin = CGPointZero, .size = rightImageView.frame.size };
		rightImageView.layer.anchorPoint = CGPointMake(0, 0);
		[self addSubview:rightImageView];
		
		rightImageView.layer.transform = rotateAndTilt;
		
		UIView *rightDarkener = [[[UIView alloc] initWithFrame:rightImageView.bounds] mcui_autorelease];
		rightDarkener.backgroundColor = [UIColor blackColor];
		rightDarkener.layer.opacity = 0.5;
		
		[rightImageView addSubview:rightDarkener];
		
		CGRect rect = CGRectApplyAffineTransform(CGRectMake(0, 0, faceWidth, faceWidth), CATransform3DGetAffineTransform(topImageView.layer.transform));
		CATransform3D relocate = CATransform3DMakeTranslation(rect.size.width / 2 - faceWidth / 2, rect.size.height - faceWidth / 2, 0);
		
		topImageView.layer.transform = CATransform3DConcat(topImageView.layer.transform, relocate);
		leftImageView.layer.transform = CATransform3DConcat(leftImageView.layer.transform, relocate);
		rightImageView.layer.transform = CATransform3DConcat(rightImageView.layer.transform, relocate);
		
		self.layer.borderColor = [UIColor redColor].CGColor;
		self.layer.borderWidth = 0.5;
	}
	return self;
}

@end
