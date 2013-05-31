//
//  TDMMasterViewController.m
//  ToDoManager
//
//  Created by Dmytro Shevchuk on 28.05.13.
//  Copyright (c) 2013 PaksHome. All rights reserved.
//

#import "TDMMasterViewController.h"

#import "TDMDetailViewController.h"
#import "TDMCellExtended.h"
#import "TDMFillingProgressViewController.h"

#define ROW_TITLE_KEY @"title"
#define ROW_PERCENT_KEY @"percent"

@interface TDMMasterViewController () {
	NSArray *_rows;
}
@end

@implementation TDMMasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//	_rows = @[@"Выпускной", @"Поход в горы", @"Свадьба у Васи и Кристины", @"Тюнинг авто"];
	_rows = @[@{ROW_TITLE_KEY: @"Выпускной", ROW_PERCENT_KEY: @(100)},
		   @{ROW_TITLE_KEY: @"Поход в горы", ROW_PERCENT_KEY: @(75)},
		   @{ROW_TITLE_KEY: @"Свадьба у Васи и Кристины", ROW_PERCENT_KEY: @(25)},
		   @{ROW_TITLE_KEY: @"Тюнинг авто", ROW_PERCENT_KEY: @(0)}];
}

//- (void)insertNewObject:(id)sender
//{
//    if (!_objects) {
//        _objects = [[NSMutableArray alloc] init];
//    }
//    [_objects insertObject:[NSDate date] atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return _rows.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	CGSize size = [_rows[indexPath.row][ROW_TITLE_KEY] sizeWithFont:[SkinHelper RobotoLightWithSize:32.0f]
								   constrainedToSize:CGSizeMake(250, 120)
									   lineBreakMode:NSLineBreakByWordWrapping];
	if (size.height == 38) {
		return 60.0f;
	}
	
	return 105.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TDMCellExtended *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
	TDMFillingProgressViewController *fillingController = [TDMFillingProgressViewController new];
	fillingController.fillingPercent = [_rows[indexPath.row][ROW_PERCENT_KEY] floatValue];
	
	cell.textLabel.text = _rows[indexPath.row][ROW_TITLE_KEY];
	cell.leftView = fillingController.view;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = _objects[indexPath.row];
//        [[segue destinationViewController] setDetailItem:object];
//    }
//}

@end
