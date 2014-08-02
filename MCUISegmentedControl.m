//
//  MCUISegmentedControl.m
//  EmendoMC
//
//  Created by Silas Schwarz on 7/26/14.
//  Copyright (c) 2014 Silas Schwarz. All rights reserved.
//

#import "MCUISegmentedControl.h"
#import "MCUISegment.h"

#import "NSObject+MCUIKit.h"

@interface MCUISegmentedControl () {
	NSInteger _selectedSegmentIndex;
}

@property (strong) NSArray *segments;

@property (strong) void(^callback)(MCUISegmentedControl *, NSInteger);

@end

@implementation MCUISegmentedControl

@synthesize segments = _segments;
@synthesize callback = _callback;

- (instancetype)initWithFrame:(CGRect)frame segments:(NSArray *)segments callback:(void (^)(MCUISegmentedControl *, NSInteger))callback {
    if (self = [super initWithFrame:frame]) {
		NSMutableArray *temp = [NSMutableArray array];
		float segmentSize = self.frame.size.width / segments.count;
		for (int i = 0; i < segments.count; i++) {
			MCUISegment *segment = [[MCUISegment alloc] initWithFrame:CGRectMake(segmentSize * i, 0, segmentSize, self.frame.size.height) name:segments[i] callback:^(MCUISegment *segment) {
				self.selectedSegmentIndex = i;
			}];
			[temp addObject:segment];
			[self addSubview:segment];
		}
		self.segments = [NSArray arrayWithArray:temp];
		_selectedSegmentIndex = -1;
		self.callback = callback;
    }
    return self;
}

- (NSInteger)selectedSegmentIndex {
	return _selectedSegmentIndex;
}

- (void)setSelectedSegmentIndex:(NSInteger)selectedSegmentIndex {
	if(_selectedSegmentIndex != -1) [self.segments[_selectedSegmentIndex] setPressed:NO];
	_selectedSegmentIndex = selectedSegmentIndex;
	[self.segments[_selectedSegmentIndex] setPressed:YES];
	self.callback(self, _selectedSegmentIndex);
}

@end
