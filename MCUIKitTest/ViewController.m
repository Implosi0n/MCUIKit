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
#import "UIImage+MCUI.h"
#import "MCUITextField.h"

#import "MCUIItemView.h"

#import "MCUIBlockView.h"

@interface ViewController ()

@end

typedef struct {
	CGFloat x;
	CGFloat y;
	CGFloat z;
} Point3D;

typedef struct {
	Point3D tl;
	Point3D tr;
	Point3D bl;
	Point3D br;
} Rect3D;

Point3D Point3DFromCGPoint(CGPoint point) {
	return (Point3D){ .x = point.x, .y = point.y, .z = 0.0 };
}

Point3D Point3DSubtract(Point3D point1, Point3D point2) {
	return (Point3D){ .x = point1.x - point2.x, .y = point1.y - point2.y, .z = point1.z - point2.z };
}

Rect3D Rect3DFromCGRect(CGRect rect) {
	return (Rect3D){
		.tl = Point3DFromCGPoint(rect.origin),
		.tr = (Point3D){ .x = rect.origin.x + rect.size.width, .y = rect.origin.y, .z = 0.0 },
		.bl = (Point3D){ .x = rect.origin.x, .y = rect.origin.y + rect.size.height, .z = 0.0 },
		.br = (Point3D){ .x = rect.origin.x + rect.size.width, .y = rect.origin.y + rect.size.height, .z = 0.0 }
	};
}

Point3D Point3DMake(CGFloat x, CGFloat y, CGFloat z) {
	return (Point3D){ .x = x, .y = y, .z = z };
}

Rect3D Rect3DMake(Point3D tl, Point3D tr, Point3D bl, Point3D br) {
	return (Rect3D){ .tl = tl, .tr = tr, .bl = bl, .br = br };
}

CATransform3D TransformFromRectToRect(Rect3D rold, Rect3D rnew) {
	Point3D x_vector = Point3DSubtract(rnew.tr, rnew.tl);
	Point3D y_vector = Point3DSubtract(rnew.bl, rnew.tl);
	CATransform3D transform = (CATransform3D){
		.m11 = x_vector.x / rold.tr.x, .m12 = y_vector.x / rold.bl.y, .m13 = 0, .m14 = 0,
		.m21 = x_vector.y / rold.tr.x, .m22 = y_vector.y / rold.bl.y, .m23 = 0, .m24 = 0,
		.m31 = x_vector.z / rold.tr.x, .m32 = y_vector.z / rold.bl.y, .m33 = 1, .m34 = 0,
		.m41 = rnew.tl.x, .m42 = rnew.tl.y, .m43 = rnew.tl.z, .m44 = 1
	};
	return transform;
}

void PrintTransform(CATransform3D t) {
	printf("CATransform3D {\n\ttx = %f\n\tty = %f\n\ttz = %f\n", t.m41, t.m42, t.m43);
	printf("\t[ %+.3f %+.3f %+.3f ]\n", t.m11, t.m12, t.m13);
	printf("\t| %+.3f %+.3f %+.3f |\n", t.m21, t.m22, t.m23);
	printf("\t[ %+.3f %+.3f %+.3f ]\n", t.m31, t.m32, t.m33);
	printf("}\n");
}

@implementation ViewController {
	MCUIPanorama *panorama;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
//	self.view.backgroundColor = [UIColor colorWithWhite:0.5 alpha:1.0];
//	
//	MCUIButton *button = [[MCUIButton alloc] initWithFrame:CGRectMake(20, 30, 200, 100) callback:^(MCUIButton *button) {
//		NSLog(@"MCUIButton: pressed");
//	}];
//	[button setTitle:@"AButton" forState:UIControlStateNormal];
//	[self.view addSubview:button];
//	
//	MCUISlider *slider = [[MCUISlider alloc] initWithFrame:CGRectMake(20, 140, self.view.frame.size.width - 40, 34) spotCount:5 callback:^(MCUISlider *sender, float position1, int position2) {
//		NSLog(@"MCUISlider: slid to %f, %d", position1, position2);
//	}];
//	[self.view addSubview:slider];
//	
//	panorama = [[MCUIPanorama alloc] initWithFrame:self.view.bounds];
//	[self.view insertSubview:panorama atIndex:0];
//	
//	MCUISegmentedControl *control = [[MCUISegmentedControl alloc] initWithFrame:CGRectMake(20, slider.frame.origin.y + slider.frame.size.height + 10, slider.frame.size.width, slider.frame.size.height) segments:@[@"hello", @"there"] callback:^(MCUISegmentedControl *sender, NSInteger index) {
//		NSLog(@"%ld", (long)index);
//	}];
//	[self.view addSubview:control];
//	
//	MCUISwitch *theswitch = [[MCUISwitch alloc] initWithFrame:CGRectMake(control.frame.origin.x, control.frame.origin.y + control.frame.size.height + 10, control.frame.size.width, control.frame.size.height) callback:^(MCUISwitch *sender, BOOL on) {
//		NSLog(@"MCUISwitch: %@", on ? @"ON" : @"OFF");
//	}];
//	[self.view addSubview:theswitch];
	
	/* Block */
	
	[self.view addSubview:[MCUIItemView itemViewWithFrame:CGRectMake(20, 20, 128, 128) id:4 damage:0]];
	
	/* End Block */
	
//	UIView *ref = [[UIView alloc] initWithFrame:CGRectMake(40, 40, 64, 64)];
//	ref.layer.borderWidth = 0.5;
//	ref.layer.borderColor = [UIColor redColor].CGColor;
//	[self.view addSubview:ref];
//	
//	CGRect totalSize;
//	CGMutablePathRef path = CGPathCreateMutable();
//	CGAffineTransform transform = CATransform3DGetAffineTransform(topImageView.layer.transform);
//	CGPathAddRect(path, &transform, topImageView.bounds);
//	transform = CATransform3DGetAffineTransform(leftImageView.layer.transform);
//	CGPathAddRect(path, &transform, leftImageView.bounds);
//	transform = CATransform3DGetAffineTransform(rightImageView.layer.transform);
//	CGPathAddRect(path, &transform, rightImageView.bounds);
//	totalSize = CGPathGetBoundingBox(path);
//	CGPathRelease(path);
//	
//	transform = CATransform3DGetAffineTransform(topImageView.layer.transform);
//	CGRect rect = CGRectApplyAffineTransform(ref.frame, transform);
//	
//	[self.view addSubview:[[MCUIItemView alloc] initWithFrame:CGRectMake(20, 200, 128, 128) id:311 damage:0]];
}

- (void)viewDidAppear:(BOOL)animated {
	[panorama pan];
	
	[self.view addSubview:[[MCUITextField alloc] initWithFrame:CGRectMake(20, 200, 200, 36) callback:^(MCUITextField *field, NSString *text) {
		
	}]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
