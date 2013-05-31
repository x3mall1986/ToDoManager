//
//  TDMCellExtended.m
//  ToDoManager
//
//  Created by Dmytro Shevchuk on 29.05.13.
//  Copyright (c) 2013 PaksHome. All rights reserved.
//

#import "TDMCellExtended.h"

@implementation TDMCellExtended

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setLeftView:(UIView *)leftView {
	_leftView = leftView;

	[self addSubview:leftView];
}

- (void)layoutSubviews {
	[super layoutSubviews];
	[self.leftView setOriginX:15.0f originY:self.height / 2 - self.leftView.center.y];
	[self.textLabel setOriginX:60.0f];
	[self.textLabel setSizeWidth:250.0f];

}

- (id)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
        // Initialization code
		self.textLabel.font = [SkinHelper RobotoLightWithSize:32.0f];
		self.textLabel.numberOfLines = 2;
    }
	return self;
}

@end
