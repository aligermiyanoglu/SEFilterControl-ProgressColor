//
//  SEViewController.m
//  SEFilterControl-ProgressColor
//
//  Created by aligermiyanoglu on 03/01/2017.
//  Copyright (c) 2017 aligermiyanoglu. All rights reserved.
//

#import "SEViewController.h"

#define CELL_ID                 @"ViewControllerCellID"
#define TITLE_KEY               @"title"
#define VIEW_CONTROLLER_KEY     @"viewController"

@interface SEViewController ()
// Data
@property (nonatomic, strong) NSArray *samplesData;
@end

@implementation SEViewController
#pragma mark - Constructor
- (id)init
{
    if (self = [super initWithNibName:@"SEViewController" bundle:nil])
    {
        // Load sample data
        _samplesData = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Samples" ofType:@"plist"]];
        self.title   = @"Samples";
    }
    
    return self;
}

#pragma mark - UITableViewDelegate methods
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Update cell title
    cell.textLabel.text = [[_samplesData objectAtIndex:indexPath.row] objectForKey:TITLE_KEY];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.navigationController pushViewController:[self viewControllerForIndexPath:indexPath]
                                         animated:YES];
    
    [tableView deselectRowAtIndexPath:indexPath
                             animated:YES];
}

#pragma mark - UITableViewDatasource methods
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_ID];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _samplesData.count;
}

#pragma mark - Utils
- (UIViewController *)viewControllerForIndexPath:(NSIndexPath *)indexPath
{
    // Extract data
    NSDictionary *data = [_samplesData objectAtIndex:indexPath.row];
    NSString *viewControllerClassName = [data objectForKey:VIEW_CONTROLLER_KEY];
    
    // Create VC
    UIViewController *vc = [[NSClassFromString(viewControllerClassName) alloc] init];
    vc.title = [data objectForKey:TITLE_KEY];
    
    return vc;
}
@end
