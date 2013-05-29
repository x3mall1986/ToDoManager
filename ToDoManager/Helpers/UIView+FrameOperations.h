//
//  UIView+FrameOperations.h
//  Altergraph
//
//  Created by Alterplay Team on 16.07.12.
//  Copyright (c) 2012 Alterplay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FrameOperations)

@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize size;

- (void)setSizeWidth:(CGFloat)width;
- (void)setSizeHeight:(CGFloat)height;
- (void)setSizeWidth:(CGFloat)width sizeHeight:(CGFloat)height;

- (void)setOriginX:(CGFloat)originX;
- (void)setOriginY:(CGFloat)originY;
- (void)setOriginX:(CGFloat)originX originY:(CGFloat)originY;

- (void)centerRelativeToView:(UIView *)view;
- (void)centerRelativeToSuperview;

@end
