//
//  ViewController.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/15/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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








@end
