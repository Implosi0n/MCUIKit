//
//  MCUIPanorama.m
//  MinecraftPanorama
//
//  Created by Silas Schwarz on 7/22/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUIPanorama.h"
#import "UIImage+MCUI.h"

#import "NSObject+MCUIKit.h"

@interface MCUIPanorama ()

@property (assign) CGFloat referenceSize;

@end

@implementation MCUIPanorama

@synthesize referenceSize = _referenceSize;

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		[self initializeDefaultValues];
    }
    return self;
}

- (void)initializeDefaultValues {
	self.front = [[[UIImageView alloc] init] mcui_autorelease];
	
	self.referenceSize = self.frame.size.width > self.frame.size.height / 2.0 ? self.frame.size.width : self.frame.size.height / 2.0;
	CGRect faceSize = CGRectMake(0, 0, self.referenceSize * 2.0, self.referenceSize * 2.0);
	
	self.front = [[[UIImageView alloc] initWithFrame:faceSize] mcui_autorelease];
	self.back = [[[UIImageView alloc] initWithFrame:faceSize] mcui_autorelease];
	self.left = [[[UIImageView alloc] initWithFrame:faceSize] mcui_autorelease];
	self.right = [[[UIImageView alloc] initWithFrame:faceSize] mcui_autorelease];
	self.top = [[[UIImageView alloc] initWithFrame:faceSize] mcui_autorelease];
	self.bottom = [[[UIImageView alloc] initWithFrame:faceSize] mcui_autorelease];
	
	CGPoint panoramaCenter = CGPointMake(self.frame.size.width / 2.0, self.frame.size.height / 2.0);
	
	self.front.center = panoramaCenter;
	self.back.center = panoramaCenter;
	self.left.center = panoramaCenter;
	self.right.center = panoramaCenter;
	self.top.center = panoramaCenter;
	self.bottom.center = panoramaCenter;
	
	self.front.contentMode = UIViewContentModeScaleToFill;
	self.back.contentMode = UIViewContentModeScaleToFill;
	self.left.contentMode = UIViewContentModeScaleToFill;
	self.right.contentMode = UIViewContentModeScaleToFill;
	self.top.contentMode = UIViewContentModeScaleToFill;
	self.bottom.contentMode = UIViewContentModeScaleToFill;
	
	self.front.image = [UIImage mcui_imageNamed:@"panorama_0.png"];
	self.right.image = [UIImage mcui_imageNamed:@"panorama_1.png"];
	self.back.image = [UIImage mcui_imageNamed:@"panorama_2.png"];
	self.left.image = [UIImage mcui_imageNamed:@"panorama_3.png"];
	self.top.image = [UIImage mcui_imageNamed:@"panorama_4.png"];
	self.bottom.image = [UIImage mcui_imageNamed:@"panorama_5.png"];
	
	[self addSubview:self.front];
	[self addSubview:self.back];
	[self addSubview:self.left];
	[self addSubview:self.right];
	[self addSubview:self.top];
	[self addSubview:self.bottom];
	
	self.zoomFactor = self.referenceSize * 0.6;
	
	[CATransaction setAnimationDuration:0];
	[CATransaction begin];
	[self render];
	[CATransaction commit];
	[CATransaction flush];
}

- (void)pan {
	[UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
		_hAngle += 0.07;
		[self render];
	} completion:^(BOOL finished) {
		[self pan];
	}];
}

- (void)render {
	CATransform3D transform3D = CATransform3DIdentity;
	
	float tempHAngle=_hAngle;
	float tempVAngle=_vAngle;
	transform3D = CATransform3DIdentity;
    transform3D.m34 = 1 / -_zoomFactor;
	transform3D=CATransform3DTranslate(transform3D,
									   self.referenceSize * sinf( - tempHAngle),
									   - self.referenceSize * cosf( - tempHAngle) * sinf( - tempVAngle),
									   - (self.referenceSize * cosf( - tempHAngle) * cosf( - tempVAngle) - _zoomFactor)
									   );
	transform3D = CATransform3DRotate(transform3D, tempHAngle, 0, 1, 0);
	self.front.layer.transform = CATransform3DRotate(transform3D, tempVAngle, cosf(tempHAngle), 0, sinf(tempHAngle));
    
	tempHAngle=_hAngle-(M_PI/2);
	tempVAngle=_vAngle;
	transform3D = CATransform3DIdentity;
    transform3D.m34 = 1 / -_zoomFactor;
	transform3D=CATransform3DTranslate(transform3D,
									   self.referenceSize * sinf( - tempHAngle),
									   -self.referenceSize * cosf( - tempHAngle) * sinf(-tempVAngle),
									   -(self.referenceSize * cosf( - tempHAngle) * cosf(-tempVAngle)-_zoomFactor)
									   );
	transform3D=CATransform3DRotate(transform3D, tempHAngle, 0, 1, 0);
	self.right.layer.transform=CATransform3DRotate(transform3D, tempVAngle, cosf(tempHAngle), 0, sinf(tempHAngle));
	
	tempHAngle=_hAngle-(M_PI);
	tempVAngle=_vAngle;
	transform3D = CATransform3DIdentity;
    transform3D.m34 = 1 / -_zoomFactor;
	transform3D=CATransform3DTranslate(transform3D,
									   self.referenceSize * sinf(-tempHAngle),
									   -self.referenceSize * cosf(-tempHAngle) * sinf(-tempVAngle),
									   -(self.referenceSize * cosf(-tempHAngle) * cosf(-tempVAngle)-_zoomFactor)
									   );
	transform3D=CATransform3DRotate(transform3D, tempHAngle, 0, 1, 0);
	self.back.layer.transform=CATransform3DRotate(transform3D, tempVAngle, cosf(tempHAngle), 0, sinf(tempHAngle));
	
	tempHAngle=_hAngle-(3 * M_PI/2);
	tempVAngle=_vAngle;
	transform3D = CATransform3DIdentity;
    transform3D.m34 = 1 / -_zoomFactor;
	transform3D=CATransform3DTranslate(transform3D,
									   self.referenceSize * sinf(-tempHAngle),
									   -self.referenceSize * cosf(-tempHAngle) * sinf(-tempVAngle),
									   -(self.referenceSize * cosf(-tempHAngle) * cosf(-tempVAngle)-_zoomFactor)
									   );
	transform3D=CATransform3DRotate(transform3D, tempHAngle, 0, 1, 0);
	self.left.layer.transform=CATransform3DRotate(transform3D, tempVAngle, cosf(tempHAngle), 0, sinf(tempHAngle));
	
	tempHAngle=_hAngle;
	tempVAngle=_vAngle-(M_PI/2);
	transform3D = CATransform3DIdentity;
    transform3D.m34 = 1 / -_zoomFactor;
	transform3D=CATransform3DTranslate(transform3D,
									   0,
									   -self.referenceSize * sinf(-tempVAngle),
									   -(self.referenceSize * cosf(-tempVAngle)-_zoomFactor)
									   );
	
	transform3D=CATransform3DRotate(transform3D, tempVAngle, 1,0,0);
	self.top.layer.transform=CATransform3DRotate(transform3D, tempHAngle, 0, 0, 1);
	
	tempHAngle=_hAngle;
	tempVAngle=_vAngle+(M_PI/2);
	transform3D = CATransform3DIdentity;
    transform3D.m34 = 1 / -_zoomFactor;
	transform3D=CATransform3DTranslate(transform3D,
									   0,
									   -self.referenceSize * sinf(-tempVAngle),
									   -(self.referenceSize * cosf(-tempVAngle)-_zoomFactor)
									   );
	
	transform3D=CATransform3DRotate(transform3D, tempVAngle, 1,0,0);
	self.bottom.layer.transform=CATransform3DRotate(transform3D, -tempHAngle, 0, 0, 1);
}

- (void)dealloc {
	[super mcui_dealloc];
}

@end
