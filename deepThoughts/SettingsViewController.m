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
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.0, 0.0);
    _button.transform = transform;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self animateButton];
}

- (void)animateButton
{
    [UIView animateWithDuration: 0.2 animations: ^{
        CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.25, 1.25);
        _button.transform = transform;
    } completion: ^(BOOL finished) {
        
        [UIView animateWithDuration:0.20 animations: ^{
            CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.95, 0.95);
            _button.transform = transform;
        } completion: ^(BOOL finished) {
            
            [UIView animateWithDuration:0.25 animations: ^{
                CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.0, 1.0);
                _button.transform = transform;
            }];
        }];
    }];
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
