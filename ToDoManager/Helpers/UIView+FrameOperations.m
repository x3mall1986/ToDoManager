//
//  UIView+FrameOperations.m
//  Altergraph
//
//  Created by Alterplay Team on 16.07.12.
//  Copyright (c) 2012 Alterplay. All rights reserved.
//

#import "UIView+FrameOperations.h"

@implementation UIView (FrameOperations)

- (void)setSizeWidth:(CGFloat)width
{
	CGRect frame = self.frame;
	frame.size = CGSizeMake(width, frame.size.height);
	self.frame = frame;
}

- (void)setSizeHeight:(CGFloat)height
{
	CGRect frame = self.frame;
	frame.size = CGSizeMake(frame.size.width, height);
	self.frame = frame;
}

- (void)setSizeWidth:(CGFloat)width sizeHeight:(CGFloat)height
{
	[self setSizeWidth:width];
	[self setSizeHeight:height];
}

- (void)setSize:(CGSize)size
{
	[self setSizeWidth:size.width];
	[self setSizeHeight:size.height];
}

- (void)setOriginX:(CGFloat)originX
{
	CGRect frame = self.frame;
	frame.origin = CGPointMake(originX, frame.origin.y);
	self.frame = frame;
}

- (void)setOriginY:(CGFloat)originY
{
	CGRect frame = self.frame;
	frame.origin = CGPointMake(frame.origin.x, originY);
	self.frame = frame;
}

- (void)setOriginX:(CGFloat)originX originY:(CGFloat)originY
{
	[self setOriginX:originX];
	[self setOriginY:originY];
}

- (void)setOrigin:(CGPoint)origin
{
	[self setOriginX:origin.x];
	[self setOriginY:origin.y];
}

- (void)centerRelativeToView:(UIView *)view
{
	[self
	 setOriginX:view.frame.origin.x + (view.frame.size.width - self.frame.size.width) / 2.0f
	 originY:view.frame.origin.y + (view.frame.size.height - self.frame.size.height) / 2.0f];
}

- (void)centerRelativeToSuperview
{
	[self
	 setOriginX:(self.superview.frame.size.width - self.frame.size.width) / 2.0f
	 originY:(self.superview.frame.size.height - self.frame.size.height) / 2.0f];
}

@end
