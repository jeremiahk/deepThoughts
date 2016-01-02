//
//  CircleButton.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 1/1/16.
//  Copyright © 2016 Jeremiah Kistler. All rights reserved.
//

#import "CircleButton.h"

@implementation CircleButton

- (void)drawRect:(CGRect)rect
{
    CGRect circleForRect = CGRectMake(rect.size.width * 0.3, rect.size.height * 0.3, rect.size.width * 0.4, rect.size.height * 0.4);
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect: circleForRect];
    
    [_backgroundColor setFill];
    [path fill];
}

- (CGRect)getBackgroundSize
{
    double offset = self.frame.size.height * 0.3;
    return CGRectMake(self.frame.origin.x + offset, self.frame.origin.y + offset, self.frame.size.width * 0.4, self.frame.size.height * 0.4);
}

@end
