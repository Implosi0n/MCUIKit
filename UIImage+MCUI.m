//
//  UIImage+MCUI.m
//  MCUIKit
//
//  Created by Silas Schwarz on 7/29/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "UIImage+MCUI.h"

#import <objc/runtime.h>

#define OUTSIDE 1
#define HOOK 2

#define VERSION HOOK

@implementation UIImage (MCUI)

+ (void)load {
	static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
		Class class = object_getClass((id)self);
		
        SEL originalSelector = @selector(imageNamed:);
        SEL swizzledSelector = @selector(mcui_imageNamed:);
		
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
		
        BOOL didAddMethod =
		class_addMethod(class,
						originalSelector,
						method_getImplementation(swizzledMethod),
						method_getTypeEncoding(swizzledMethod));
		
        if (didAddMethod) {
            class_replaceMethod(class,
								swizzledSelector,
								method_getImplementation(originalMethod),
								method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (UIImage *)mcui_imageNamed:(NSString *)name {
#if VERSION == HOOK
	return [self mcui_imageNamed:name];
#else
	
#endif
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
