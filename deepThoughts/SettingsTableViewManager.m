//
//  SettingsViewTableManager.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 1/1/16.
//  Copyright © 2016 Jeremiah Kistler. All rights reserved.
//

#import "SettingsTableViewManager.h"

@implementation SettingsTableViewManager

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[UITableViewCell alloc] init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
@end
