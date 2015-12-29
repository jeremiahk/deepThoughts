//
//  SettingsViewController.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/27/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)circleTouchUpInside:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
