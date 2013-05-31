//
//  TDMFillingProgressViewController.m
//  ToDoManager
//
//  Created by Dmytro Shevchuk on 31.05.13.
//  Copyright (c) 2013 PaksHome. All rights reserved.
//

#import "TDMFillingProgressViewController.h"

#define FULL_FILLING_EDGE_BOTTOM 3.0f
#define FULL_FILLING_HEIGHT 29.0f

@interface TDMFillingProgressViewController ()

@end

@implementation TDMFillingProgressViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[self setFillingImageViewPosition];
	[self setFillingImageViewBackgroundColor];
}

#pragma mark - Actions
- (void)setFillingImageViewBackgroundColor
{
	if (_fillingPercent == 0.0f) {
		self.fillingBackgroundImageView.backgroundColor = [UIColor grayColor];
		[self setFullRoundedCornerForFillImage];
		self.okImageView.hidden = YES;
	} else if (_fillingPercent < 50.0f) {
		self.fillingBackgroundImageView.backgroundColor = [UIColor redColor];
		[self setBottomRoundedCornerForFillImage];
		self.okImageView.hidden = YES;
	} else if (_fillingPercent < 100.0f) {
		self.fillingBackgroundImageView.backgroundColor = [UIColor orangeColor];
		[self setBottomRoundedCornerForFillImage];
		self.okImageView.hidden = YES;
	} else {
		self.fillingBackgroundImageView.backgroundColor = [UIColor colorWithHexString:@"#9FCC32"];
		[self setFullRoundedCornerForFillImage];
		self.okImageView.hidden = NO;
	}
}

- (void)setFillingImageViewPosition
{
	CGFloat height = (self.fillingPercent) ? FULL_FILLING_HEIGHT * self.fillingPercent / 100 : FULL_FILLING_HEIGHT;
	self.fillingBackgroundImageView.height = height;
	self.fillingBackgroundImageView.bottom = self.view.height - FULL_FILLING_EDGE_BOTTOM;
}

- (void)setFullRoundedCornerForFillImage {
	UIRectCorner rectCorner = UIRectCornerAllCorners;
	[self setImageRoundCorners:rectCorner];
}

- (void)setBottomRoundedCornerForFillImage {
	UIRectCorner rectCorner = UIRectCornerBottomLeft | UIRectCornerBottomRight;
	[self setImageRoundCorners:rectCorner];
}

- (void)setImageRoundCorners:(UIRectCorner)rectCorner
{
	UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.fillingBackgroundImageView.bounds
												   byRoundingCorners:rectCorner
														 cornerRadii:CGSizeMake(2.0f, 2.0f)];
	// Create the shape layer and set its path
	CAShapeLayer *maskLayer = [CAShapeLayer layer];
	maskLayer.frame = self.fillingBackgroundImageView.bounds;
	maskLayer.path = maskPath.CGPath;
	// Set the newly created shape layer as the mask for the image view's layer
	self.fillingBackgroundImageView.layer.mask = maskLayer;
}

@end
