//
//  UIImage+MCUI.h
//  MCUIKit
//
//  Created by Silas Schwarz on 7/29/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
	kMCUIImageUnknown = -1,
	kMCUIImageBlock = 0,
	kMCUIImageItem = 1,
	kMCUIImageSlab = 2,
	kMCUIImageStairs = 3,
	kMCUIImageMultiBlock = 4,
	kMCUIImageCarpet = 5,
	kMCUIImageCactus = 6,
	kMCUIImageFencePost = 7,
	kMCUIImageFenceGate = 8,
	kMCUIImageWall = 9
} MCUIImageType;

@interface UIImage (MCUI)

+ (UIImage *)mcui_imageNamed:(NSString *)name;

+ (UIImage *)mcui_imageWithID:(uint16_t)imageID damage:(uint16_t)damage;
+ (NSArray *)mcui_imagesWithID:(uint16_t)imageID damage:(uint16_t)damage;

+ (MCUIImageType)mcui_typeOfImageWithID:(uint16_t)imageID damage:(uint16_t)damage;

- (UIImage *)mcui_resize:(CGSize)size;
- (UIImage *)mcui_subImageWithFrame:(CGRect)frame;

@end
