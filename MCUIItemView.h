//
//  MCUIItemView.h
//  MCUIKit
//
//  Created by Silas Schwarz on 8/6/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCUIItemView : UIView

+ (instancetype)itemViewWithFrame:(CGRect)frame id:(uint16_t)itemID damage:(uint16_t)damage;

- (instancetype)initWithFrame:(CGRect)frame id:(uint16_t)itemID damage:(uint16_t)damage;

@end
