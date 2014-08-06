//
//  NSObject+MCUIKit.h
//  MCUIKit
//
//  Created by Silas Schwarz on 8/1/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <Foundation/Foundation.h>

#if !__has_feature(objc_arc)
# define mcui_retain retain
# define mcui_release release
# define mcui_autorelease autorelease
# define mcui_dealloc dealloc
#else

#endif /* objc_arc */

@interface NSObject (MCUIKit)

- (void)mcui_dealloc;

- (instancetype)mcui_retain;
- (instancetype)mcui_autorelease;
- (void)mcui_release;

@end
