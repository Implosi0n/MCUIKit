//
//  MCUISlider.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/21/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUISlider.h"

#import "MCUISliderThumbView.h"
#import "UIImage+MCUI.h"

#import "NSObject+MCUIKit.h"

@implementation MCUISlider

- (instancetype)initWithFrame:(CGRect)frame spotCount:(NSUInteger)count callback:(void (^)(MCUISlider *, float, int))callback {
    if (self = [super initWithFrame:frame]) {
		self.callback = callback;
		
		UIImage *touchgui = [UIImage mcui_imageNamed:@"touchgui.png"];
		UIImage *sliderImage = [touchgui mcui_subImageWithFrame:CGRectMake(225, 125, 11, 17)];
		
		__block BOOL isOut;
		
		int sliderBarHeight = 6;
		UIView *sliderBar = [[UIView alloc] initWithFrame:CGRectMake(7, (self.frame.size.height - sliderBarHeight)/2.0, self.frame.size.width - 14, sliderBarHeight)];
#define spotsize CGSizeMake(8, 14)
		sliderBar.backgroundColor = [UIColor colorWithRed:112.0/255.0 green:112.0/255.0 blue:112.0/255.0 alpha:1.0];
		
		MCUISliderThumbView *sliderImageView = [[MCUISliderThumbView alloc] initWithImage:[sliderImage mcui_resize:CGSizeMake(22, 34)] callBack:^void(MCUISliderThumbView *thumb, UITouch *touch, int type) {
			switch (type) {
				case 0:
					isOut = NO; //!CGRectContainsPoint(thumb.bounds, [touch locationInView:thumb]);
					break;
				case 1:
				{
					if (!isOut) {
						CGPoint location = [touch locationInView:thumb];
						CGPoint previousLocation = [touch previousLocationInView:thumb];
						float xdiff = location.x - previousLocation.x;
						isOut = NO;
						if (thumb.frame.origin.x + xdiff < 0) {
							isOut = YES;
							xdiff = -thumb.frame.origin.x;
						} else if (thumb.frame.origin.x + xdiff > (self.frame.size.width - thumb.frame.size.width)) {
							isOut = YES;
							xdiff = self.frame.size.width - thumb.frame.size.width - thumb.frame.origin.x;
						}
						thumb.frame = CGRectOffset(thumb.frame, xdiff, 0); //(location.y - previousLocation.y)
					}
					isOut = !((0 < [touch locationInView:thumb].x) && ([touch locationInView:thumb].x < thumb.bounds.size.width));
				}
					break;
				case 2:
				{
					float p = thumb.frame.origin.x;
					float t = self.frame.size.width - thumb.frame.size.width;
					float ret = p/t;
					if (self.spotCount) {
						float interval = (sliderBar.frame.size.width - spotsize.width)/((float)self.spotCount - 1);
						float i = interval/t;
						int position = 0;
						float r2 = ret;
						while (r2 > i) {
							r2 -= i;
							position ++;
						}
						if (r2/i > 0.5) {
							position ++;
						}
						[UIView animateWithDuration:0.125 animations:^{
							[thumb setFrame:CGRectMake(position * interval + 7 - thumb.frame.size.width / 2.0, thumb.frame.origin.y, thumb.frame.size.width, thumb.frame.size.height)];
						}];
						self.callback(self, -1.0, position);
					} else {
						self.callback(self, ret, -1);
					}
					break;
				}
				default:
					break;
			}
		}];
		
		[self addSubview:sliderBar];
		[self addSubview:sliderImageView];
		
		self.spotCount = count;
		if (self.spotCount >= 2) {
			float interval = (sliderBar.frame.size.width - spotsize.width)/((float)self.spotCount - 1);
			for (NSUInteger i = 0; i < self.spotCount; i++) {
				UIView *nextSpot = [[UIView alloc] initWithFrame:(CGRect){ .size = spotsize, .origin = CGPointMake(i * interval + 7, 10) }];
				nextSpot.backgroundColor = [UIColor colorWithRed:144.0/255.0 green:144.0/255.0 blue:144.0/255.0 alpha:1.0];
				[self insertSubview:nextSpot aboveSubview:sliderBar];
				[nextSpot mcui_release];
			}
		}
		
		/**/
    }
    return self;
}

@end
