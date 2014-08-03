//
//  ViewController.m
//  MCUIKitTest
//
//  Created by Silas Schwarz on 8/1/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "ViewController.h"
#import "MCUIButton.h"
#import "MCUISlider.h"
#import "MCUIPanorama.h"
#import "MCUISegmentedControl.h"
#import "MCUISwitch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.view.backgroundColor = [UIColor colorWithWhite:0.5 alpha:1.0];
	
	MCUIButton *button = [[MCUIButton alloc] initWithFrame:CGRectMake(20, 30, 200, 100) callback:^(MCUIButton *button) {
		NSLog(@"MCUIButton: pressed");
	}];
	[button setTitle:@"AButton" forState:UIControlStateNormal];
	[self.view addSubview:button];
	
	MCUISlider *slider = [[MCUISlider alloc] initWithFrame:CGRectMake(20, 140, self.view.frame.size.width - 40, 34) spotCount:5 callback:^(MCUISlider *sender, float position1, int position2) {
		NSLog(@"MCUISlider: slid to %f, %d", position1, position2);
	}];
	[self.view addSubview:slider];
	
	MCUIPanorama *panorama = [[MCUIPanorama alloc] initWithFrame:self.view.bounds];
	[panorama pan];
	[self.view insertSubview:panorama atIndex:0];
	
	MCUISegmentedControl *control = [[MCUISegmentedControl alloc] initWithFrame:CGRectMake(20, slider.frame.origin.y + slider.frame.size.height + 10, slider.frame.size.width, slider.frame.size.height) segments:@[@"hello", @"there"] callback:^(MCUISegmentedControl *sender, NSInteger index) {
		NSLog(@"%ld", (long)index);
	}];
	[self.view addSubview:control];
	
	MCUISwitch *theswitch = [[MCUISwitch alloc] initWithFrame:CGRectMake(control.frame.origin.x, control.frame.origin.y + control.frame.size.height + 10, control.frame.size.width, control.frame.size.height) callback:^(MCUISwitch *sender, BOOL on) {
		NSLog(@"MCUISwitch: %@", on ? @"ON" : @"OFF");
	}];
	[self.view addSubview:theswitch];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
