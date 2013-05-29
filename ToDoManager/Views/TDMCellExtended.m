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
    }
	return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
