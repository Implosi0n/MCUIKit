//
//  UIImage+MCUI.h
//  MCUIKit
//
//  Created by Silas Schwarz on 7/29/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (MCUI)

- (UIImage *)mcui_resize:(CGSize)size;
- (UIImage *)mcui_subImageWithFrame:(CGRect)frame;

- (UIImage *)mcui_imageNamed:(NSString *)name;

@end
