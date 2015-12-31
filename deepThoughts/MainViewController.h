//
//  ViewController.h
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/15/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

