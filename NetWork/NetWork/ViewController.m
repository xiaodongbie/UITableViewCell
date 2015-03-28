//
//  ViewController.m
//  NetWork
//
//  Created by D&T on 15/3/28.
//  Copyright (c) 2015年 小东别. All rights reserved.
//

#import "ViewController.h"
#import "DQCell.h"
@interface ViewController (){
    NSMutableArray * dataList;
    WKNew * kk;
}
@property(weak, nonatomic)IBOutlet  UITableView * tablevlew;
@end

@implementation ViewController
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DQCell * cell = [DQCell cellWithTableView:tableView setArray:dataList setIndexPath:indexPath.row];
    return cell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dataList.count;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    dataList = [[NSMutableArray alloc]initWithObjects:@"1",@"21",@"31",@"14",@"1",@"1",@"1", nil];
    [self.tablevlew reloadData];
    // Do any additional setup after loading the view, typically from a nib.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 155;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
