//
//  MCUIKeyboardViewController.h
//  EmendoMC
//
//  Created by Silas Schwarz on 7/21/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MCUITextField.h"

@interface MCUIKeyboardViewController : UIViewController <UITextViewDelegate>

@property (strong) NSMutableString *text;
@property (strong) NSString *name;

- (instancetype)initWithName:(NSString *)name textField:(MCUITextField *)textField;

@end
