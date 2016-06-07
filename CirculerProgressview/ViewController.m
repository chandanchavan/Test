//
//  ViewController.m
//  CirculerProgressview
//
//  Created by Chandan Chavan on 16/05/16.
//  Copyright © 2016 Chandan Chavan. All rights reserved.
//

#import "ViewController.h"
#import "MBCircularProgressBarLayer.h"
#import "MBCircularProgressBarView.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //  _progressBAr.progressLineWidth=5;
    //[self.progressViewTabel registerClass:[ProgressTableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.progressViewTabel registerNib:[UINib nibWithNibName:@"ProgressTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
}
-(void)viewDidAppear:(BOOL)animated
{
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma Tabelview method
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProgressTableViewCell *cell=(ProgressTableViewCell*)[_progressViewTabel dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if(cell==nil)
        {
        cell=[[ProgressTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
    cell.progressBar.progressLineWidth=2;
           [CATransaction begin];
           [CATransaction setAnimationDuration:10];
           cell.progressBar.value=100-cell.progressBar.value;
          [CATransaction commit];
    cell.lblTest.text=@"test";
    cell.textLabel.textColor=[UIColor blackColor];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
@end
