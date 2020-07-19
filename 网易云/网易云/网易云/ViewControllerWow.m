//
//  ViewControllerWow.m
//  网易云
//
//  Created by young_jerry on 2020/7/16.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewControllerWow.h"

@interface ViewControllerWow ()
@property UITableView* tableView;
@property NSMutableArray* arrayData;
@end

@implementation ViewControllerWow
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage* imageWow = [UIImage imageNamed:@"发现.png"];
        UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"发现" image:imageWow tag:101];
        self.tabBarItem = tabBarItem;//创建数据视图
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

