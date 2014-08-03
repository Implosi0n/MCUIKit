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

static UIImage *terrain_atlas;
static UIImage *items_opaque;

@implementation UIImage (MCUI)

+ (void)initialize {
	terrain_atlas = [[self mcui_imageNamed:@"terrain-atlas.tga"] mcui_retain];
	items_opaque = [[self mcui_imageNamed:@"items-opaque.png"] mcui_retain];
}

+ (UIImage *)mcui_imageNamed:(NSString *)name {
	return [[[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] mcui_pathForResource:[name stringByDeletingPathExtension] ofType:[name pathExtension]]] mcui_autorelease];
}

+ (UIImage *)mcui_imageWithID:(uint16_t)imageID damage:(uint16_t)damage {
	return [self mcui_imagesWithID:imageID damage:damage][0];
}

+ (NSArray *)mcui_imagesWithID:(uint16_t)imageID damage:(uint16_t)damage {
	
}

+ (MCUIImageType)typeOfImageWithID:(uint16_t)imageID damage:(uint16_t)damage {
	
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
