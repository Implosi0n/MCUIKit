//
//  MCUISliderThumbView.h
//  EmendoMC
//
//  Created by Silas Schwarz on 7/20/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCUISliderThumbView : UIView

- (instancetype)initWithImage:(UIImage *)image callBack:(void(^)(MCUISliderThumbView*, UITouch*, int))callback;

@end
