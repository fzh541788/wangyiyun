//
//  ViewControllerMy.m
//  网易云
//
//  Created by young_jerry on 2020/7/16.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ViewControllerMy.h"
#import "ViewController.h"
#import "yunViewController.h"
@interface ViewControllerMy()
@end

@implementation ViewControllerMy
- (void)viewDidLoad {
    
    // Do any additional setup after loading the view.
    [super viewDidLoad];
 
    
    UIBarButtonItem *p1 = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"yun.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressDown)];
    self.navigationItem.leftBarButtonItem = p1;
       // Do any additional setup after loading the view.
        UIImage* imageAccount = [UIImage imageNamed:@"账号.png"];
        UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"账号" image:imageAccount tag:101];
        self.tabBarItem = tabBarItem;

    
         //p1:位置 p2：风格
         _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 375, 586)  style:UITableViewStyleGrouped];
            
            

    //设置数据视图的代理对象
    _tableView.delegate = self;
    //设置数据视图的数据源对象
    _tableView.dataSource = self;
     
         
         [self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc]init];
         
    NSArray* array01 = [NSArray arrayWithObjects:@"", nil];
    NSArray* array02 = [NSArray arrayWithObjects:@"我的音乐",@"", nil];
    NSArray* array03 = [NSArray arrayWithObjects:@"最近播放",@"", nil];
    NSArray* array04 = [NSArray arrayWithObjects:@"创建歌单⁴    收藏歌单⁹      歌单助手",@"", nil];
    
     [_arrayData addObject:array01];
     [_arrayData addObject:array02];
     [_arrayData addObject:array03];
     [_arrayData addObject:array04];
    
    UIButton* btnMy = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnMy setImage:[[UIImage imageNamed:@"xiazai.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnMy.titleLabel.text = @"本地音乐";
    btnMy.titleLabel.font = [UIFont systemFontOfSize:10];
    btnMy.frame = CGRectMake(45, 145, 32, 32);
    [_tableView addSubview:btnMy];

    UILabel* label01 = [[UILabel alloc]init];
    label01.text = @"本地音乐";
    label01.frame = CGRectMake(35, 165, 80, 40);
    [_tableView addSubview:label01];
    label01.font = [UIFont systemFontOfSize:12];

    UIButton* btndt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btndt setImage:[[UIImage imageNamed:@"电台.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btndt.titleLabel.text = @"我的电台";
    btndt.titleLabel.font = [UIFont systemFontOfSize:10];
    btndt.frame = CGRectMake(130,145 , 32, 32);
    [_tableView addSubview:btndt];

    UILabel* label02 = [[UILabel alloc]init];
    label02.text = @"我的电台";
    label02.frame = CGRectMake(120, 165, 80, 40);
    [_tableView addSubview:label02];
    label02.font = [UIFont systemFontOfSize:12];

    UIButton* btnsc = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnsc setImage:[[UIImage imageNamed:@"收藏.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnsc.titleLabel.text = @"我的收藏";
    btnsc.titleLabel.font = [UIFont systemFontOfSize:10];
    btnsc.frame = CGRectMake(215,145 , 30, 30);
    [_tableView addSubview:btnsc];
    
    UILabel* label03 = [[UILabel alloc]init];
    label03.text = @"我的收藏";
    label03.frame = CGRectMake(205, 165, 80, 40);
    [_tableView addSubview:label03];
    label03.font = [UIFont systemFontOfSize:12];
    
    UIButton* btnnew = [UIButton buttonWithType:UIButtonTypeRoundedRect];
      [btnnew setImage:[[UIImage imageNamed:@"新歌.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
      btnnew.titleLabel.text = @"关注新歌";
      btnnew.titleLabel.font = [UIFont systemFontOfSize:10];
      btnnew.frame = CGRectMake(295,145, 30, 30);
      [_tableView addSubview:btnnew];
      
      UILabel* label04 = [[UILabel alloc]init];
      label04.text = @"关注新歌";
      label04.frame = CGRectMake(285, 165, 80, 40);
      [_tableView addSubview:label04];
      label04.font = [UIFont systemFontOfSize:12];
    
    UIButton* btntouxiang = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btntouxiang setImage:[[UIImage imageNamed:@"001.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btntouxiang.titleLabel.text = @"头像";
    btntouxiang.titleLabel.font = [UIFont systemFontOfSize:10];
    btntouxiang.frame = CGRectMake(10,20,90,90);
    [_tableView addSubview:btntouxiang];
    
    UILabel* label05 = [[UILabel alloc]init];
    label05.text = @"复杂化";
    label05.frame = CGRectMake(120, 40, 80, 40);
    [_tableView addSubview:label05];
    label05.font = [UIFont systemFontOfSize:18];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
       _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    UILabel* label06 = [[UILabel alloc]init];
    label06.text = @"LV.7";
    label06.frame = CGRectMake(122, 60, 80, 40);
    [_tableView addSubview:label06];
    label06.font = [UIFont systemFontOfSize:10];
    _tableView.tableHeaderView = nil;
    _tableView.tableFooterView = nil;
       _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}
 //获取每组元素的个数（行数）
 //必须要实现的协议函数
 //程序在显示数据视图是会调用此函数
 //返回值：表示每组元素的个数
 //p1: 数据视图对象本身
 //p2:那一组需要的行数
-(void)pressDown{
    yunViewController* yun1 = [[yunViewController alloc]init];
    [self.navigationController pushViewController:yun1 animated:YES ];
//    NSLog(@"111");
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
     NSInteger numRow = [[_arrayData objectAtIndex:section]count];
    return numRow;
 }

 //设置数据视图的组数
 -(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//     return 5;
     return _arrayData.count;
 }
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    NSString* cellStr = @"cell";
    //
//         UITableViewCell* cell01 = [_tableView dequeueReusableCellWithIdentifier:cellStr];
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
        if(cell == nil){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
    cell.textLabel.textColor = [UIColor blackColor];
        cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryNone;
        if(indexPath.section == 1 ){
            if(indexPath.row == 0){
                cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            }else{
                    UIButton* btnMy1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
               [btnMy1 setImage:[[UIImage imageNamed:@"my1.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
               btnMy1.titleLabel.font = [UIFont systemFontOfSize:10];
               btnMy1.frame = CGRectMake(0, 250, 400, 180);
               [_tableView addSubview:btnMy1];
            }
    }
    if (indexPath.section == 2){
        if(indexPath.row == 0){
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }else{
            UIButton* btnMy2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [btnMy2 setImage:[[UIImage imageNamed:@"my2.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            btnMy2.titleLabel.font = [UIFont systemFontOfSize:10];
            btnMy2.frame = CGRectMake(0, 500, 400, 100);
            [_tableView addSubview:btnMy2];
        }
    }
    if (indexPath.section == 3){
         if(indexPath.row == 0){
             cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
         }else{
             UIButton* btnMy3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
             [btnMy3 setImage:[[UIImage imageNamed:@"my3.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
             btnMy3.titleLabel.font = [UIFont systemFontOfSize:10];
             btnMy3.frame = CGRectMake(0, 650, 400, 180);
             [_tableView addSubview:btnMy3];
         }
       
    }
        return cell;

}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0  ){
        return 200;
    }
    if((indexPath.section == 1) && (indexPath.row == 1))
    return 200;
    if((indexPath.section == 2) && (indexPath.row == 1))
    return 110;
    if((indexPath.section == 3) && (indexPath.row == 1))
    return 220;
    return 45;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [[UIView alloc]init];
}
-(UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [[UIView alloc]init];
}
//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    switch (section) {
//        case 1:
//            return @"音乐服务";
//            break;
//        case 2:
//            return @"小工具";
//            break;
//        default:
//            return @"";
//            break;
//    }
//}
// -(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//     return @"音乐服务";
// }
 @end

