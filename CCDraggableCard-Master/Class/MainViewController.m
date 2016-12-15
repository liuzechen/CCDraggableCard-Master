//
//  MainViewController.m
//  CCDraggableCard-Master
//
//  Created by jzzx on 2016/11/25.
//  Copyright © 2016年 Zechen Liu. All rights reserved.
//

#import "MainViewController.h"
#import "CodeViewController.h"
#import "XibViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) NSArray *contents;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.contents = @[@"Code"]; // , @"Xib"
    self.tableView.tableFooterView = [UIView new];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [self.contents objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (!indexPath.row) {
        CodeViewController *codeVc = [[CodeViewController alloc] init];
        [self.navigationController pushViewController:codeVc animated:YES];
    } else {
        // XibViewController *xibVc = [[XibViewController alloc] initWithNibName:@"XibViewController" bundle:nil];
        // [self.navigationController pushViewController:xibVc animated:YES];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
