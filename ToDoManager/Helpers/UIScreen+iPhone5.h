//
//  UIScreen+iPhone5.h
//  KnowRates
//
//  Created by Dmytro Shevchuk on 26.01.13.
//
//

#import <UIKit/UIKit.h>

#ifndef UISCREEN_CONSTANTS

#define UISCREEN_CONSTANTS

#define STATUS_BAR_HEIGHT 20.0f
#define KEYBOARD_HEIGHT 216.0f

#endif

@interface UIScreen (iPhone5)

- (BOOL)is568h;

@end
