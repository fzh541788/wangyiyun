//
//#import <UIKit/UIKit.h>
//
//@interface ViewController : UIViewController
//@property(nonatomic,strong)UITableView *mainTableView;
//@end
//
//
//  ViewController.h
//  39.uitableview基础
//
//  Created by young_jerry on 2020/7/16.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIBarPositioningDelegate,UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UIButton *mybutton;

@end

