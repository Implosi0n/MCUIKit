//
//  UIImage+MCUI.m
//  MCUIKit
//
//  Created by Silas Schwarz on 7/29/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "UIImage+MCUI.h"

#import <objc/runtime.h>

#ifndef SRCROOT
# define SRCROOT @""
#endif

#define OUTSIDE 1
#define HOOK 2

#define VERSION OUTSIDE

#if VERSION == OUTSIDE

#if TARGET_IPHONE_SIMULATOR

#define kMCApplicationsPath [SRCROOT stringByAppendingPathComponent:@"Applications"]

#else

#define kMCApplicationsPath @"/var/mobile/Applications"

#endif

NSString *MCFindSandboxWithBundleID(NSString *bundleID) {
    NSArray *sandboxes = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:kMCApplicationsPath error:nil];
    for (NSString *sandbox in sandboxes) {
		NSArray *contents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:[kMCApplicationsPath stringByAppendingPathComponent:sandbox] error:nil];
		for (NSString *content in contents) {
			if ([content hasSuffix:@".app"]) {
				NSDictionary *info = [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"%@/%@/%@/Info.plist", kMCApplicationsPath, sandbox, content]];
                if ([[info valueForKey:@"CFBundleIdentifier"] isEqualToString:bundleID]) {
                    return [NSString stringWithFormat:@"%@/%@", kMCApplicationsPath, sandbox];
                }
			}
		}
    }
    return nil;
}

static NSString *minecraftSandbox;

#endif

@implementation UIImage (MCUI)

#if VERSION == OUTSIDE

+ (void)load {
	minecraftSandbox = MCFindSandboxWithBundleID(@"com.mojang.minecraftpe");
}

#endif

+ (UIImage *)mcui_imageNamed:(NSString *)name {
#if VERSION == HOOK
	return [self imageNamed:name];
#else
	return [[UIImage alloc] initWithContentsOfFile:[minecraftSandbox stringByAppendingFormat:@"minecraftpe.app/%@", name]];
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
