//
//  MCUILabel.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/21/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUILabel.h"

#import "NSObject+MCUIKit.h"

#define kGlyphMainColor [UIColor colorWithRed:203.0/255.0 green:203.0/255.0 blue:203.0/255.0 alpha:1.0]
#define kGlyphAltColor [UIColor colorWithRed:50.0/255.0 green:50.0/255.0 blue:50.0/255.0 alpha:1.0]

@implementation MCUILabel

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		self.textColor = kGlyphMainColor;
//		self.shadowColor = kGlyphAltColor;
		self.font = [UIFont fontWithName:@"Minecraft" size:16.0];
    }
    return self;
}

@end
