//
//  ViewController.m
//  HelloWorld
//
//  Created by LaboratoriOS Cronian Academy on 18/02/15.
//  Copyright (c) 2015 Lab1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) UITableView *myTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    //UIButton *myButton = [[UIButton alloc] initWithFrame:CGRectMake(60, 60, 100, 100)];
    //myButton.backgroundColor = [UIColor redColor];
    //[self.view addSubview:myButton];
    //[myButton addTarget:self action:@selector(myMethod) forControlEvents:UIControlEventTouchUpInside];
    
    
    _myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _myTableView.dataSource = self;
    _myTableView.delegate = self;
    [self.view addSubview:_myTableView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)myMethod {
    if(self.view.backgroundColor == [UIColor greenColor])
        self.view.backgroundColor = [UIColor blueColor];
    else
        self.view.backgroundColor = [UIColor greenColor];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *myCell = [UITableViewCell new];
    if(indexPath.row % 2 == 0)
        myCell.textLabel.text = @"uraa";
    else
        myCell.backgroundColor = [UIColor redColor];
    return myCell;
}

@end
