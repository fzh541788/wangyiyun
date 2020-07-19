#import "ViewControllerAccount.h"
#import "ViewController.h"
@interface ViewControllerAccount ()
@end

@implementation ViewControllerAccount
- (void)viewDidLoad {
    
    // Do any additional setup after loading the view.
    [super viewDidLoad];
 
       // Do any additional setup after loading the view.
        UIImage* imageAccount = [UIImage imageNamed:@"账号.png"];
        UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"账号" image:imageAccount tag:101];
        self.tabBarItem = tabBarItem;

    
         //p1:位置 p2：风格
         _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 375, 586)  style:UITableViewStyleGrouped];
            
    _Switch = [[UISwitch alloc] init];
    _Switch.on = NO;

    //设置数据视图的代理对象
    _tableView.delegate = self;
    //设置数据视图的数据源对象
    _tableView.dataSource = self;
     
         
         [self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc]init];
         
    NSArray* array01 = [NSArray arrayWithObjects:@"", nil];
    NSArray* array02 = [NSArray arrayWithObjects:@"创作者中心", nil];
    NSArray* array03 = [NSArray arrayWithObjects:@"音乐服务",@"演出",@"商城",@"口袋铃声",@"在线听歌免流量", nil];
    NSArray* array04 = [NSArray arrayWithObjects:@"小工具",@"设置",@"夜间模式",@"定时关闭",@"音乐黑名单",@"鲸云音效",@"添加Siri捷径",@"音乐闹钟",@"青少年模式", nil];
    NSArray* array05 = [NSArray arrayWithObjects:@"我的订单",@"优惠卷",@"分享网易云音乐",@"关于", nil];
    NSArray* array06 = [NSArray arrayWithObjects:@"                                退出登陆", nil];
    
     [_arrayData addObject:array01];
     [_arrayData addObject:array02];
     [_arrayData addObject:array03];
     [_arrayData addObject:array04];
     [_arrayData addObject:array05];
     [_arrayData addObject:array06];
    
    UIButton* btnFriend = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnFriend setImage:[[UIImage imageNamed:@"haoyou.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnFriend.titleLabel.text = @"我的好友";
    btnFriend.titleLabel.font = [UIFont systemFontOfSize:10];
    btnFriend.frame = CGRectMake(130, 145, 30, 30);
    [_tableView addSubview:btnFriend];

    UILabel* label01 = [[UILabel alloc]init];
    label01.text = @"我的好友";
    label01.frame = CGRectMake(125, 165, 80, 40);
    [_tableView addSubview:label01];
    label01.font = [UIFont systemFontOfSize:10];

    UIButton* btnNews = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnNews setImage:[[UIImage imageNamed:@"xiaoxi.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnNews.titleLabel.text = @"我的消息";
    btnNews.titleLabel.font = [UIFont systemFontOfSize:10];
    btnNews.frame = CGRectMake(40,145 , 30, 30);
    [_tableView addSubview:btnNews];

    UILabel* label02 = [[UILabel alloc]init];
    label02.text = @"我的消息";
    label02.frame = CGRectMake(35, 165, 80, 40);
    [_tableView addSubview:label02];
    label02.font = [UIFont systemFontOfSize:10];

    UIButton* btnSelf = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnSelf setImage:[[UIImage imageNamed:@"fangzi2.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    btnSelf.titleLabel.text = @"个性主页";
    btnSelf.titleLabel.font = [UIFont systemFontOfSize:10];
    btnSelf.frame = CGRectMake(215,145 , 30, 30);
    [_tableView addSubview:btnSelf];
    
    UILabel* label03 = [[UILabel alloc]init];
    label03.text = @"个性主页";
    label03.frame = CGRectMake(210, 165, 80, 40);
    [_tableView addSubview:label03];
    label03.font = [UIFont systemFontOfSize:10];
    
    UIButton* btnClo = [UIButton buttonWithType:UIButtonTypeRoundedRect];
      [btnClo setImage:[[UIImage imageNamed:@"yifu-2.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
      btnClo.titleLabel.text = @"个性装扮";
      btnClo.titleLabel.font = [UIFont systemFontOfSize:10];
      btnClo.frame = CGRectMake(295,145, 35, 35);
      [_tableView addSubview:btnClo];
      
      UILabel* label04 = [[UILabel alloc]init];
      label04.text = @"个性装扮";
      label04.frame = CGRectMake(290, 165, 80, 40);
      [_tableView addSubview:label04];
      label04.font = [UIFont systemFontOfSize:10];
    
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
}
 //获取每组元素的个数（行数）
 //必须要实现的协议函数
 //程序在显示数据视图是会调用此函数
 //返回值：表示每组元素的个数
 //p1: 数据视图对象本身
 //p2:那一组需要的行数
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
     UIImage* image1 = [UIImage imageNamed:@""];
                cell.imageView.image = image1;
        if(indexPath.section == 1 ){
             UIImage* image = [UIImage imageNamed:@"1.png"];
             cell.imageView.image = image;
         cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    if ((indexPath.section == 2)&&(indexPath.row != 0)) {
        NSString* str = [NSString stringWithFormat:@"%ld.png",indexPath.row % 5+ 1];
        UIImage* image2 = [UIImage imageNamed:str];
        cell.imageView.image = image2;
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
           
    }
    if ((indexPath.section == 3) && (indexPath.row != 0)){
        NSString* str1 = [NSString stringWithFormat:@"%ld.png",indexPath.row % 8+5];
              UIImage* image3 = [UIImage imageNamed:str1];
              cell.imageView.image = image3;
         cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        if(indexPath.row == 2){
//              UISwitch *Switch = [[UISwitch alloc] init];
            _Switch.frame = CGRectMake(290, 10, 80, 40);
//                      _Switch.on = YES;
                      [cell.contentView addSubview:_Switch];
        }
    }
    if (indexPath.section == 4){
        NSString* str2 = [NSString stringWithFormat:@"%ld.png",indexPath.row % 13+14];
              UIImage* image4 = [UIImage imageNamed:str2];
              cell.imageView.image = image4;
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    if(indexPath.section == 5){
        cell.textLabel.textColor = [UIColor redColor];
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

