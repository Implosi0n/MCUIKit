//
//  MCUIPanorama.h
//  MinecraftPanorama
//
//  Created by Silas Schwarz on 7/22/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCUIPanorama : UIView

@property (strong, nonatomic) UIImageView *front;
@property (strong, nonatomic) UIImageView *back;
@property (strong, nonatomic) UIImageView *left;
@property (strong, nonatomic) UIImageView *right;
@property (strong, nonatomic) UIImageView *top;
@property (strong, nonatomic) UIImageView *bottom;

@property (assign) CGFloat zoomFactor;

@property (assign) CGFloat hAngle;
@property (assign) CGFloat vAngle;

@property (assign) BOOL shouldPan;

- (void)render;
- (void)pan;

@end
