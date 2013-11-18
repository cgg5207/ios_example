//
//  ViewController.m
//  TableViewCustom
//
//  Created by chen john on 13-11-18.
//  Copyright (c) 2013年 chan john. All rights reserved.
//

#import "ViewController.h"
#import "SelfCell.h"


@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *tableData;
    NSArray *tablepng;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tableData = [NSMutableArray
                 arrayWithObjects:@"czbk1",@"czbk2",@"czbk3",@"czbk4",@"czbk5",@"czbk6",
                 nil];//数组的初始化
    
    tablepng  = [[NSMutableArray alloc]initWithObjects: @"q1.png",@"q2.png",@"q3.png",@"q4.png",@"q5.png",@"q6.png", nil];

}


//设置tableView的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];//返回数组元素的数量
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;//定义单元格的高度为100个像素
}


//换个对单元格进行初始化
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *itcast = @"SelfCell";//定义静态标识符 因为不断循环，不断进行初始化，需要定义静态
                                          //@"SelfCell"这里是 Table View Cell中的 identifier"SelfCell"
    
    //定义单元格，获取标识符，类型强制转换成
    SelfCell *cell = (SelfCell *)[tableView dequeueReusableCellWithIdentifier:itcast];
    
    if (cell == nil) {
        //加载视图SelfCell.xib
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"SelfCell" owner:self options:nil];
        cell = [nib objectAtIndex:0]; //初始化cell
    }
    cell.Alable.text = [NSString stringWithFormat:@"%d",indexPath.row];
    cell.Blable.text = [NSString stringWithFormat:@"%d",indexPath.row*3];
    cell.Clable.text = [tableData objectAtIndex:indexPath.row];
    cell.pngimageview.image= [UIImage imageNamed:[tablepng objectAtIndex:indexPath.row]];
    return cell;

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
