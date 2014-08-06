//
//  MCUIItemView.m
//  MCUIKit
//
//  Created by Silas Schwarz on 8/6/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUIItemView.h"

#import "UIImage+MCUI.h"

#import "MCUIBlockView.h"

@implementation MCUIItemView {
	UIImageView *itemImageView;
}

+ (instancetype)itemViewWithFrame:(CGRect)frame id:(uint16_t)itemID damage:(uint16_t)damage {
	switch ([UIImage mcui_typeOfImageWithID:itemID damage:damage]) {
		case kMCUIImageItem:
			return [[MCUIItemView alloc] initWithFrame:frame id:itemID damage:damage];
		case kMCUIImageBlock:
			return [[MCUIBlockView alloc] initWithFrame:frame id:itemID damage:damage];
		default:
			return [[MCUIItemView alloc] initWithFrame:frame id:itemID damage:damage];
	}
}

- (instancetype)initWithFrame:(CGRect)frame id:(uint16_t)itemID damage:(uint16_t)damage {
	if (self = [super initWithFrame:frame]) {
		itemImageView = [[UIImageView alloc] initWithFrame:self.bounds];
		itemImageView.image = [[UIImage mcui_imageWithID:itemID damage:damage] mcui_resize:frame.size];
		[self addSubview:itemImageView];
	}
	return self;
}

@end
