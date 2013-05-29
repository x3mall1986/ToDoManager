//
//  TDMViewControllerExtended.m
//  ToDoManager
//
//  Created by Dmytro Shevchuk on 29.05.13.
//  Copyright (c) 2013 PaksHome. All rights reserved.
//

#import "TDMViewControllerExtended.h"

@interface TDMViewControllerExtended ()

@end

@implementation TDMViewControllerExtended

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	self.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background"]];
	self.tableView.separatorColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tableViewSeparator"]];
}

@end
