//
//  TDMCellImageView.m
//  ToDoManager
//
//  Created by Dmytro Shevchuk on 29.05.13.
//  Copyright (c) 2013 PaksHome. All rights reserved.
//

#import "TDMCellImageView.h"

@implementation TDMCellImageView

- (id)init
{
    self = [super initWithImage:[UIImage imageNamed:@"cellImage"]];
    if (self) {
        // Initialization code
		_imageView = [UIImageView new];
//		_imageView.backgroundColor = [UIColor redColor];
		[self addSubview:_imageView];
    }
    return self;
}

- (void)setFillPercent:(CGFloat)fillPercent {
	_fillPercent = fillPercent;
	
	CGFloat imageHeight = self.frame.size.height * fillPercent / 100;
	if (self.fillPercent < 50.0f) {
		_imageView.backgroundColor = [UIColor redColor];
	} else if (self.fillPercent < 100.0f) {
		_imageView.backgroundColor = [UIColor orangeColor];
	} else {
		_imageView.backgroundColor = [UIColor greenColor];
	}
	_imageView.frame = CGRectMake(3.0f, self.frame.size.height - imageHeight - 2, 29.0f, imageHeight);
}
- (void)layoutSubviews {
	[super layoutSubviews];
	
}

@end
