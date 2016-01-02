//
//  SettingsViewController.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/27/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsTableViewManager.h"

@interface SettingsViewController ()

@property (strong, nonatomic) IBOutlet SettingsTableViewManager *tableViewManager;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [_button shrink];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [_button animate];
}

- (IBAction)circleTouchUpInside:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
