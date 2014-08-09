//
//  UIImage+MCUI.m
//  MCUIKit
//
//  Created by Silas Schwarz on 7/29/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "UIImage+MCUI.h"

#import <objc/runtime.h>

#import "NSBundle+MCUI.h"
#import "NSObject+MCUIKit.h"

#import "ItemList.h"

#define MCUIItem(id, damage) [NSString stringWithFormat:@"%.3d %.2d", id, damage]

static UIImage *terrain_atlas;
static UIImage *items_opaque;

@implementation UIImage (MCUI)

+ (void)initialize {
	terrain_atlas = [[self mcui_imageNamed:@"terrain-atlas.tga"] mcui_retain];
	items_opaque = [[self mcui_imageNamed:@"items-opaque.png"] mcui_retain];
}

+ (UIImage *)mcui_imageNamed:(NSString *)name {
	NSString *path = [[NSBundle mainBundle] mcui_pathForResource:[name stringByDeletingPathExtension] ofType:[name pathExtension]];
	return [[[UIImage alloc] initWithContentsOfFile:path] mcui_autorelease];
}

+ (NSDictionary *)mcui_itemWithID:(uint16_t)imageID damage:(uint16_t)damage {
	NSString *key = MCUIItem(imageID, damage);
	NSString *noDamageKey = MCUIItem(imageID, 0);
	return (ItemList()[key]) ? (ItemList()[key]) : (ItemList()[noDamageKey]);
}

+ (UIImage *)mcui_imageWithID:(uint16_t)imageID damage:(uint16_t)damage {
	NSArray *array = [self mcui_imagesWithID:imageID damage:damage];
	return array.count ? array[0] : nil;
}

+ (UIImage *)mcui_imageWithItem:(NSDictionary *)item {
	UIImage *largeImage = [self mcui_imageNamed:item[@"file"]];
	NSDictionary *image = KnownImages()[item[@"file"]];
	if (image) {
		CGFloat ratio = largeImage.size.height / [image[@"height"] floatValue];
		CGFloat itemWidth = [image[@"item"][@"height"] floatValue] * ratio;
		CGFloat itemHeight = [image[@"item"][@"width"] floatValue] * ratio;
		return [largeImage mcui_subImageWithFrame:CGRectMake(itemWidth * [item[@"x"] intValue], itemHeight * [item[@"y"] intValue], itemWidth, itemHeight)];
	}
	return [largeImage mcui_subImageWithFrame:CGRectMake(16 * [item[@"x"] intValue], 16 * [item[@"y"] intValue], 16, 16)];
}

+ (NSArray *)mcui_imagesWithID:(uint16_t)imageID damage:(uint16_t)damage {
	NSDictionary *item = [self mcui_itemWithID:imageID damage:damage];
	NSMutableArray *ret = [NSMutableArray array];
	for (NSDictionary *image in item[@"Images"]) {
		UIImage *next = [self mcui_imageWithItem:image];
		if (next) [ret addObject:next];
	}
	return [NSArray arrayWithArray:ret];
}

+ (MCUIImageType)mcui_typeOfImageWithID:(uint16_t)imageID damage:(uint16_t)damage {
	NSDictionary *item = [self mcui_itemWithID:imageID damage:damage];
	return (MCUIImageType)[item[@"renderType"] intValue];
}

- (UIImage *)mcui_resize:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, false, 0.0f);
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextSetInterpolationQuality(c, kCGInterpolationNone);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage * snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snapshotImage;
}

- (UIImage *)mcui_subImageWithFrame:(CGRect)frame {
	CGImageRef cg_image = CGImageCreateWithImageInRect([self CGImage], frame);
	UIImage *ret = [UIImage imageWithCGImage:cg_image];
	CGImageRelease(cg_image);
    return ret;
}

@end
