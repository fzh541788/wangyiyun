//
//  ViewControllerVideo.m
//  网易云
//
//  Created by young_jerry on 2020/7/16.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewControllerVideo.h"

@interface ViewControllerVideo ()

@end

@implementation ViewControllerVideo

- (void)viewDidLoad {
//    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [super viewDidLoad];
       // Do any additional setup after loading the view.
        UIImage* imageVideo = [UIImage imageNamed:@"视频.png"];
        UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"视频" image:imageVideo tag:101];
        self.tabBarItem = tabBarItem;
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
