//
//  TDMCellImageView.h
//  ToDoManager
//
//  Created by Dmytro Shevchuk on 29.05.13.
//  Copyright (c) 2013 PaksHome. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDMCellImageView : UIImageView {
	UIView *_imageView;
}

@property (assign, nonatomic) CGFloat fillPercent;

@end
