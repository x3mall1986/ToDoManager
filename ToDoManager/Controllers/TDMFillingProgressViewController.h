//
//  TDMFillingProgressViewController.h
//  ToDoManager
//
//  Created by Dmytro Shevchuk on 31.05.13.
//  Copyright (c) 2013 PaksHome. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface TDMFillingProgressViewController : UIViewController

@property (assign, nonatomic) CGFloat fillingPercent;

@property (weak, nonatomic) IBOutlet UIImageView *fillingBackgroundImageView;
@end
