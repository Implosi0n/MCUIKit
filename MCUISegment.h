//
//  MCUISegment.h
//  EmendoMC
//
//  Created by Silas Schwarz on 7/26/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCUISegment : UIView

- (instancetype)initWithFrame:(CGRect)frame name:(NSString *)name callback:(void(^)(MCUISegment*))callback;

@property (strong) NSString *name;
@property (assign) BOOL pressed;

@end
