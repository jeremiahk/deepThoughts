//
//  SettingsViewController.h
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/27/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CircleButton.h"

@interface SettingsViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet CircleButton *button;

@end
