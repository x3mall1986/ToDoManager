//
//  TDMDetailViewController.h
//  ToDoManager
//
//  Created by Dmytro Shevchuk on 28.05.13.
//  Copyright (c) 2013 PaksHome. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDMDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
