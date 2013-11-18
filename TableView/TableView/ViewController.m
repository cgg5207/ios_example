//
//  ViewController.m
//  TableView
//
//  Created by chen john on 13-11-18.
//  Copyright (c) 2013年 chan john. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSMutableArray *tabledata;//创建数组指针
    NSMutableArray *tablepng;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    tabledata = [NSMutableArray
                 arrayWithObjects:@"czbk1",@"czbk2",@"czbk3",@"czbk4",@"czbk5",@"czbk6",@"czbk7",
                 nil];//数组的初始化
    
    tablepng  = [[NSMutableArray alloc]initWithObjects: @"q1.png",@"q2.png",@"q3.png",@"q4.png",@"q5.png",@"q6.png",@"1.png", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//设置tableView的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tabledata count];//返回数组元素的数量
}

//挨个初始化单元格
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //存储一个表态标识符，因为是一个循环的函数，所以需要静态
    static NSString *itcast=@"itcastTableViewItem";
    
    //创建一个单元格，定义标识符
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:itcast];
    
    if (cell==nil) {
        //单元格初始化 并选择默认的风格
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:itcast];
    }
    
    //设置cell文本
    cell.textLabel.text = [tabledata objectAtIndex:indexPath.row];

    //显示同一张图片
    //cell.imageView.image = [UIImage imageNamed:@"1.png"];
    NSLog(@"------png file : %@",[tablepng objectAtIndex:indexPath.row]);
    
    cell.imageView.image = [UIImage imageNamed:[tablepng objectAtIndex:indexPath.row] ];
    
    return cell;
    
}


@end
