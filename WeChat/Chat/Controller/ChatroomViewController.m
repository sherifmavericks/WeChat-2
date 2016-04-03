//
//  ChatroomViewController.m
//  WeChat
//
//  Created by Siegrain on 16/4/3.
//  Copyright © 2016年 siegrain. weChat. All rights reserved.
//

#import "ChatroomViewController.h"
#import "EditorView.h"
#import "Masonry/Masonry/Masonry.h"

@interface
ChatroomViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) UITableView* tableView;
@property (strong, nonatomic) EditorView* editorView;
@end

@implementation ChatroomViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self buildTableView];
  [self buildEditorView];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

#pragma mark - build
- (void)buildTableView
{
  self.tableView = [[UITableView alloc] init];
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
  [self.view addSubview:self.tableView];
  [self.tableView mas_makeConstraints:^(MASConstraintMaker* make) {
    make.top.left.right.offset(0);
    make.bottom.offset(-44);
  }];
}
- (void)buildEditorView
{
  self.editorView = [EditorView editor];
  [self.view addSubview:self.editorView];
  [self.editorView mas_makeConstraints:^(MASConstraintMaker* make) {
    make.left.right.bottom.offset(0);
    make.height.offset(100);
  }];
}

#pragma mark - tableview
- (NSInteger)tableView:(UITableView*)tableView
 numberOfRowsInSection:(NSInteger)section
{
  return 0;
}
- (UITableViewCell*)tableView:(UITableView*)tableView
        cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
  return [[UITableViewCell alloc] init];
}
@end
