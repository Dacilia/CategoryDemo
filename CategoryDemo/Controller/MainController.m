//
//  MainController.m
//  CategoryDemo
//
//  Created by 李达志 on 2018/4/8.
//  Copyright © 2018年 LDZ. All rights reserved.
//

#import "MainController.h"
#import "DmeoCell.h"
#import "NSString+DMExtension.h"

@interface MainController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView * tableView;
@property (nonatomic,strong) NSArray * titleArr;
@property (nonatomic,strong) NSArray * controllerItems;
@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Category";
    self.view.backgroundColor=[UIColor whiteColor];
    self.titleArr=@[@"PhotoImageController"];
    self.controllerItems=@[@"PhotoImageController"];
    [self.tableView registerNib:[UINib nibWithNibName:@"DmeoCell" bundle:nil] forCellReuseIdentifier:KIDDmeoCell];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(@0);
    }];
    
    
}
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView=[[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate=self;
        _tableView.dataSource=self;
        
    }
    return _tableView;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.titleArr.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGRect rect=[NSString dm_heightStr:self.titleArr[indexPath.row] width:KScreenwidth-20 height:1000 sizefont:15];

    return rect.size.height>50?rect.size.height:KHeightDmeoCell;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DmeoCell*cell=[tableView dequeueReusableCellWithIdentifier:KIDDmeoCell];
    cell.leftLabel.text=[self.titleArr objectAtIndex:indexPath.row];
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.navigationController pushViewController: [[NSClassFromString([self.controllerItems objectAtIndex:indexPath.row])alloc]init] animated:YES];

}


@end
