//
//  mainViewTableManager.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 1/1/16.
//  Copyright © 2016 Jeremiah Kistler. All rights reserved.
//

#import "MainTableViewManager.h"
#import "MainTableViewCell.h"

@interface MainTableViewCell()

@end

@implementation MainTableViewManager

- (id)init
{
    if (self = [super init])
    {
        NSArray *titles = [[NSArray alloc] initWithObjects:@"Is there another word for 'synonym'?", @"Is there another word for 'synonym'?1 alkdjf alskdjf alskdjflas dflkasd jflkasdj flka sdflk asjdflkjasdf asdfklj alksdjfkjsadf kasdjf asdkl;fjlk asdlkfjjsdlkjf adkfj kajsdf l;k", @"Is there another", nil];
        self.titles = titles;
        
        
        NSArray *categorys =  [[NSArray alloc] initWithObjects:@"Random thoughts", @"Random thoughts1", @"Random thoughts2", nil];
        self.categorys = categorys;
    }
    return self;
}
    
    

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mainCell"];
    
    cell.categoryLabel.text = _categorys[indexPath.row];
    
    UIFont *font = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    NSDictionary *attributes = @{NSFontAttributeName : font, NSForegroundColorAttributeName : [UIColor blackColor]};
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:_titles[indexPath.row] attributes:attributes];
    
    cell.titleLabel.attributedText = attributedString;
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIFont *font = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    NSDictionary *attributes = @{NSFontAttributeName : font, NSForegroundColorAttributeName : [UIColor blackColor]};
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:self.titles[indexPath.row] attributes:attributes];
    
    CGRect frame = [attributedString boundingRectWithSize:CGSizeMake(299, 1000) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingUsesDeviceMetrics context:nil];
    
    CGFloat height = ceilf(CGRectGetHeight([attributedString boundingRectWithSize:CGSizeMake(299, CGFLOAT_MAX)
                                             options: NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingUsesDeviceMetrics
                                             context:nil])) + 1;
    
    return height + 64.0;
}

@end
