//
//  MCUISlider.h
//  EmendoMC
//
//  Created by Silas Schwarz on 7/21/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCUISlider : UIView

@property (assign) NSUInteger spotCount;
@property (strong) void(^callback)(MCUISlider*, float position, int);

- (instancetype)initWithFrame:(CGRect)frame spotCount:(NSUInteger)count callback:(void(^)(MCUISlider*, float position, int))callback;

@end
