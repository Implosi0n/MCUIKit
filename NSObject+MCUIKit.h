//
//  NSObject+MCUIKit.h
//  MCUIKit
//
//  Created by Silas Schwarz on 8/1/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MCUIKit)

- (void)mcui_dealloc;

- (instancetype)mcui_retain;
- (instancetype)mcui_autorelease;
- (void)mcui_release;

@end
