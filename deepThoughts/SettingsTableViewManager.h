//
//  SettingsViewTableManager.h
//  deepThoughts
//
//  Created by Jeremiah Kistler on 1/1/16.
//  Copyright © 2016 Jeremiah Kistler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsTableViewManager :  NSObject <UITableViewDelegate, UITableViewDataSource>

@property NSArray *categories;

@end
