//
//  MCUITextField.h
//  EmendoMC
//
//  Created by Silas Schwarz on 7/22/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCUITextField : UIView

@property (strong) NSString *text;
@property (strong) NSString *name;

- (instancetype)initWithFrame:(CGRect)frame callback:(void (^)(MCUITextField*, NSString*))callback;

- (void)callBackWithText:(NSString *)text;

@end
