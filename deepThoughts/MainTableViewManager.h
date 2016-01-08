//
//  mainViewTableManager.h
//  deepThoughts
//
//  Created by Jeremiah Kistler on 1/1/16.
//  Copyright © 2016 Jeremiah Kistler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableViewManager : NSObject <UITableViewDelegate, UITableViewDataSource>

@property NSMutableArray *titles;
@property NSMutableArray *categories;

@end
