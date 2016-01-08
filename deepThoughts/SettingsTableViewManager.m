//
//  SettingsViewTableManager.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 1/1/16.
//  Copyright © 2016 Jeremiah Kistler. All rights reserved.
//

#import "SettingsTableViewManager.h"
#import "SettingsTableViewCell.h"

@implementation SettingsTableViewManager

- (id)init
{
    if (self = [super init])
    {
        NSArray *categories =  [[NSArray alloc] initWithObjects:@"Random thoughts", @"Random thoughts1", @"Random thoughts2",  @"Random thoughts3", @"Random thoughts4", @"Random thoughts5", @"Random thoughts6", @"Random thoughts7", nil];
        self.categories = categories;
    }
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SettingsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryCell"];
    
    cell.categoryLabel.text = _categories[indexPath.row];
    
//    UIFont *font = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
//    NSDictionary *attributes = @{NSFontAttributeName : font, NSForegroundColorAttributeName : [UIColor blackColor]};
//    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:_titles[indexPath.row] attributes:attributes];
//    
//    cell.titleLabel.attributedText = attributedString;
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 88;
}

@end
