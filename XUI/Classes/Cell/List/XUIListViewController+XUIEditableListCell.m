//
//  XUIListViewController+XUIEditableListCell.m
//  XUI
//
//  Created by Zheng on 15/10/2017.
//

#import "XUIListViewController+XUIEditableListCell.h"
#import "XUIEditableListViewController.h"
#import "XUIEditableListCell.h"

@implementation XUIListViewController (XUIEditableListCell)

- (void)tableView:(UITableView *)tableView XUIEditableListCell:(UITableViewCell *)cell {
    XUIEditableListCell *listCell = (XUIEditableListCell *)cell;
    XUIEditableListViewController *optionViewController = [[XUIEditableListViewController alloc] initWithCell:listCell];
    optionViewController.cellFactory.theme = self.cellFactory.theme;
    optionViewController.cellFactory.adapter = self.cellFactory.adapter;
    optionViewController.delegate = self;
    optionViewController.title = listCell.xui_label;
    [self.navigationController pushViewController:optionViewController animated:YES];
}

#pragma mark - XUIEditableListViewControllerDelegate

- (void)editableListViewControllerContentListChanged:(XUIEditableListViewController *)controller {
    
}

@end