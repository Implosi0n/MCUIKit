//
//  NSBundle+MCUI.h
//  MCUIKit
//
//  Created by Silas Schwarz on 8/2/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (MCUI)

- (NSString *)mcui_bundlePath;
- (NSString *)mcui_pathForResource:(NSString *)name ofType:(NSString *)ext;

@end
