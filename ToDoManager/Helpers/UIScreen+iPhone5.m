//
//  UIScreen+iPhone5.m
//  KnowRates
//
//  Created by Dmytro Shevchuk on 26.01.13.
//
//

#import "UIScreen+iPhone5.h"

@implementation UIScreen (iPhone5)

- (BOOL)is568h
{
	return self.bounds.size.height == 568.0f;
}

@end
