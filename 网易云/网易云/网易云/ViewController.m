#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//
//    //创建数据视图
//    //p1:位置 p2：风格
//    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, 375, 586)  style:UITableViewStyleGrouped];
//    
//    //设置数据视图的代理对象
//    _tableView.delegate = self;
//    //设置数据视图的数据源对象
//    _tableView.dataSource = self;
//     
//    [self.view addSubview:_tableView];
//    
//    _arrayData = [[NSMutableArray alloc]init];
//    
//    
//    
//    for (int i = 1; i < 20 ; i++) {
//        NSString* str = [NSString stringWithFormat:@"A %d",i ];
//        
//        [_arrayData addObject:str];
//        
//    }
//}
////获取每组元素的个数（行数）
////必须要实现的协议函数
////程序在显示数据视图是会调用此函数
////返回值：表示每组元素的个数
////p1: 数据视图对象本身
////p2:那一组需要的行数
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    NSInteger numRow = [[_arrayData objectAtIndex:section]count];
//    return numRow;
//}
//
////设置数据视图的组数
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return _arrayData.count;
//}
////cellForRowAtIndexPath  创建15个单元格 这个函数被调用15次
//-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    NSString* cellStr = @"cell";
//
//    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:cellStr];
//
//    if(cell == nil){
//        //创建一个单元格
//        //参数一：单元格的样式
//        //参数二：单元格的复用标记
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
//
//    }
//    
//    //将单元格主文字内容赋值
//    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
//
//    return cell;
//
//}
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 60;
//}
//-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    return @"音乐服务";
}
@end
