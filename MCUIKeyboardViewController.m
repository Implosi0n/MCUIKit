//
//  MCUIKeyboardViewController.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/21/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUIKeyboardViewController.h"
#import "MCUILabel.h"
#import "MCUIButton.h"

#import "NSObject+MCUIKit.h"

@interface MCUIKeyboardViewController () {
	NSMutableString *_text;
}

@property (strong) UIView *textBackground;
@property (strong) UITextView *dummyTextField;
@property (strong) MCUILabel *textView;
@property (strong) MCUIButton *doneButton;
@property (strong) MCUILabel *nameLabel;

@property (strong) void (^doneButtonCallback)(MCUIButton*);

@property (strong) NSTimer *blinker;

@end

@implementation MCUIKeyboardViewController

@synthesize textBackground = _textBackground;
@synthesize dummyTextField = _dummyTextField;
@synthesize textView = _textView;
@synthesize doneButton = _doneButton;
@synthesize nameLabel = _nameLabel;

@synthesize doneButtonCallback = _doneButtonCallback;

@synthesize blinker = _blinker;

static BOOL blinkStatus = YES;

- (instancetype)initWithName:(NSString *)name textField:(MCUITextField *)textField {
    if (self = [super init]) {
		self.text = textField.text ? [textField.text mutableCopy] : [@"" mutableCopy];
		self.name = name;
		self.nameLabel = [[[MCUILabel alloc] initWithFrame:CGRectMake(10, 10 + [[UIApplication sharedApplication] statusBarFrame].size.width, self.view.frame.size.height - 10 - 10 - 132, 16)] mcui_autorelease];
		self.nameLabel.text = name;
		self.view.backgroundColor = [UIColor colorWithRed:3.0/255.0 green:3.0/255.0 blue:3.0/255.0 alpha:1.0];
		self.textBackground = [[[UIView alloc] initWithFrame:CGRectMake(10, 40 + [[UIApplication sharedApplication] statusBarFrame].size.width, self.view.frame.size.height - 10 - 10 - 132, 34)] mcui_autorelease];
		self.textBackground.layer.borderColor = [UIColor colorWithWhite:1.0 alpha:1.0].CGColor;
		self.textBackground.layer.borderWidth = 2.0;
		self.textBackground.backgroundColor = [UIColor clearColor];
		
		self.dummyTextField = [[[UITextView alloc] initWithFrame:CGRectMake(-10, -10, 10, 10)] mcui_autorelease];
		self.dummyTextField.delegate = self;
		self.dummyTextField.editable = YES;
		
		self.doneButtonCallback = [^(MCUIButton *button) {
			[self.blinker invalidate];
			if (!blinkStatus) {
				[self.text deleteCharactersInRange:NSMakeRange(self.text.length - 1, 1)];
			}
			[textField setText:self.text];
			[textField callBackWithText:self.text];
			[self dismissViewControllerAnimated:YES completion:^{
				
			}];
		} mcui_retain];
		
		self.doneButton = [[MCUIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.height - 132, [[UIApplication sharedApplication] statusBarFrame].size.width, 132, 52) callback:self.doneButtonCallback];
		
		[self.doneButton setTitle:@"Done" forState:UIControlStateNormal];
		
		self.textView = [[[MCUILabel alloc] initWithFrame:CGRectMake(10, 10, 802, 16)] mcui_autorelease];
		self.textView.text = self.text;
		
		[self.textBackground addSubview:self.textView];
		
		[self.dummyTextField setKeyboardAppearance:UIKeyboardAppearanceDark];
		self.dummyTextField.returnKeyType = UIReturnKeyDone;
		
		[self.view addSubview:self.nameLabel];
		[self.view addSubview:self.textBackground];
		[self.view addSubview:self.dummyTextField];
		[self.view addSubview:self.doneButton];
	}
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
//	self.blinker = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(blink) userInfo:nil repeats:YES];
	[self.dummyTextField becomeFirstResponder];
}

- (void)blink {
	if (blinkStatus) {
		[self.text appendString:@"_"];
	} else {
		[self.text deleteCharactersInRange:NSMakeRange(self.text.length - 1, 1)];
	}
	blinkStatus = !blinkStatus;
	[self.textView setText:self.text];
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
	if ([text isEqualToString:@"\n"]) {
		self.doneButtonCallback(self.doneButton);
		return NO;
	}
	[self.text replaceCharactersInRange:range withString:text];
	[self.textView setText:self.text];
	return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableString *)text {
	return _text;
}

- (void)setText:(NSMutableString *)text {
	_text = text;
	[self.textView setText:_text];
	[self.dummyTextField setText:_text];
}

- (void)mcui_dealloc {
	[self.doneButtonCallback mcui_release];
	[super mcui_dealloc];
}

@end
