//
//  SettingsViewController.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/27/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
//    _buttonWidth.constant = 0;
//    _buttonHeight.constant = 0;
//    
//    [self.view layoutIfNeeded];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self animateButton];
}

- (void)animateButton {
    
//    _buttonHeight.constant = 44;
//    _buttonWidth.constant = 44;
//    
//    [UIView animateWithDuration:1.0 animations:^{
//        [self.view layoutIfNeeded];
//    }];
}

- (IBAction)circleTouchUpInside:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [[UITableViewCell alloc] init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

@end
