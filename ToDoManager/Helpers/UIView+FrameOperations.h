//
//  UIView+FrameOperations.h
//  Altergraph
//
//  Created by Alterplay Team on 16.07.12.
//  Copyright (c) 2012 Alterplay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FrameOperations)

- (void)setSizeWidth:(CGFloat)width;
- (void)setSizeHeight:(CGFloat)height;
- (void)setSizeWidth:(CGFloat)width sizeHeight:(CGFloat)height;
- (void)setSize:(CGSize)size;

- (void)setOriginX:(CGFloat)originX;
- (void)setOriginY:(CGFloat)originY;
- (void)setOriginX:(CGFloat)originX originY:(CGFloat)originY;
- (void)setOrigin:(CGPoint)origin;

- (void)centerRelativeToView:(UIView *)view;
- (void)centerRelativeToSuperview;

@end
