//
//  NSBundle+MCUI.m
//  MCUIKit
//
//  Created by Silas Schwarz on 8/2/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "NSBundle+MCUI.h"
#import "NSObject+MCUIKit.h"

#ifndef SRCROOT
# define SRCROOT @""
#endif

#define OUTSIDE 1
#define HOOK 2

#ifndef VERSION
# define VERSION OUTSIDE
#endif /* VERSION */

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

#if VERSION == OUTSIDE

BOOL GSFontAddFromFile(const char *path);

__attribute__((__constructor__)) static void _mcui_initialize() {
	@autoreleasepool {
		minecraftSandbox = [MCFindSandboxWithBundleID(@"com.mojang.minecraftpe") mcui_retain];
		NSLog(@"%@", GSFontAddFromFile([[NSBundle mainBundle] mcui_pathForResource:@"minecraft" ofType:@"ttf"].UTF8String) ? @"YES" : @"NO");
	}
}

#endif

@implementation NSBundle (MCUI)

- (NSString *)mcui_bundlePath {
#if VERSION == OUTSIDE
	return [minecraftSandbox stringByAppendingPathComponent:@"minecraftpe.app"];
#else
	return [self bundlePath];
#endif
}

- (NSString *)mcui_pathForResource:(NSString *)name ofType:(NSString *)ext {
#if VERSION == OUTSIDE
	return [[[self mcui_bundlePath] stringByAppendingPathComponent:name] stringByAppendingPathExtension:ext];
#else
	return [self bundlePath];
#endif
}

@end
