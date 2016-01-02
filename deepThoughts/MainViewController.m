//
//  ViewController.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/15/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import "MainViewController.h"
#import "MainTableViewManager.h"

@interface MainViewController ()

@property (strong, nonatomic) IBOutlet MainTableViewManager *tableViewManager;

@end

@implementation MainViewController

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

@end
