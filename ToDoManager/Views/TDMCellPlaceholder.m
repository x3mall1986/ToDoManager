//
//  TDMCellPlaceholder.m
//  ToDoManager
//
//  Created by Dmytro Shevchuk on 31.05.13.
//  Copyright (c) 2013 PaksHome. All rights reserved.
//

#import "TDMCellPlaceholder.h"

@implementation TDMCellPlaceholder

- (id)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
        // Initialization code
		self.textLabel.font = [SkinHelper RobotoLightWithSize:32.0f];
		self.textLabel.numberOfLines = 2;
		self.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"plusCellPlaceholder"]];
    }
	return self;
}

@end
