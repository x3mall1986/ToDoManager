//
//  UIView+FrameOperations.m
//  Altergraph
//
//  Created by Alterplay Team on 16.07.12.
//  Copyright (c) 2012 Alterplay. All rights reserved.
//

#import "UIView+FrameOperations.h"

@implementation UIView (FrameOperations)

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (void)setSizeWidth:(CGFloat)width
{
	[self setWidth:width];
}

- (void)setSizeHeight:(CGFloat)height
{
	[self setHeight:height];
}

- (void)setSizeWidth:(CGFloat)width sizeHeight:(CGFloat)height
{
	[self setSizeWidth:width];
	[self setSizeHeight:height];
}

- (void)setOriginX:(CGFloat)originX
{
	[self setLeft:originX];
}

- (void)setOriginY:(CGFloat)originY
{
	[self setTop:originY];
}

- (void)setOriginX:(CGFloat)originX originY:(CGFloat)originY
{
	[self setOriginX:originX];
	[self setOriginY:originY];
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
