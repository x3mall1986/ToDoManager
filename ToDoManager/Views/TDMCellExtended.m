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

- (id)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
        // Initialization code
		self.textLabel.font = [UIFont fontWithName:@"Roboto-Light" size:32.0f];
		self.textLabel.numberOfLines = 2;
    }
	return self;
}

- (void)setTdmImageView:(TDMCellImageView *)tdmImageView {
	_tdmImageView = tdmImageView;
	
	[self addSubview:tdmImageView];
}

- (void)layoutSubviews {
	[super layoutSubviews];
	[self.tdmImageView setOriginX:15.0f originY:self.frame.size.height / 2 - self.tdmImageView.center.y];
	[self.textLabel setOriginX:60.0f];
	[self.textLabel setSizeWidth:250.0f];

}

@end
