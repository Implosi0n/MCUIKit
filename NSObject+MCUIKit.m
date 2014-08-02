//
//  NSObject+MCUIKit.m
//  MCUIKit
//
//  Created by Silas Schwarz on 8/1/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "NSObject+MCUIKit.h"

#import "NSObject+MCUIKit.h"

@implementation NSObject (MCUIKit)

#if !__has_feature(objc_arc)
# define RETAIN(obj) [obj retain]
# define RELEASE(obj) [obj release]
# define AUTORELEASE(obj) [obj autorelease]
# define DEALLOC(obj) [obj dealloc]
#else
# define RETAIN(obj) (obj)
# define RELEASE(obj)
# define AUTORELEASE(obj) (obj)
# define DEALLOC(obj)
#endif /* objc_arc */

- (void)mcui_dealloc {
	DEALLOC(self);
}

- (instancetype)mcui_retain {
	return RETAIN(self);
}

- (instancetype)mcui_autorelease {
	return AUTORELEASE(self);
}

- (void)mcui_release {
	RELEASE(self);
}

@end
