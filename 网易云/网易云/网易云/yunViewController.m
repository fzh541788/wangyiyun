//
//  yunViewController.m
//  网易云
//
//  Created by young_jerry on 2020/7/19.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "yunViewController.h"
@interface yunViewController ()

@end

@implementation yunViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"btn02.jpg"]];
     self.title = @"网易云盘";
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"fanhui.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    leftBtn.tintColor = [UIColor redColor];
    self.navigationItem.leftBarButtonItem = leftBtn;
}
-(void)pressBack{
    [self.navigationController popViewControllerAnimated:YES];
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
