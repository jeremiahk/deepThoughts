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

- (void)shrink
{
    CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.0, 0.0);
    self.transform = transform;
}

- (void)animate
{
    [UIView animateWithDuration: 0.2 animations: ^{
        CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.25, 1.25);
        self.transform = transform;
    } completion: ^(BOOL finished) {
        
        [UIView animateWithDuration:0.20 animations: ^{
            CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.95, 0.95);
            self.transform = transform;
        } completion: ^(BOOL finished) {
            
            [UIView animateWithDuration:0.25 animations: ^{
                CGAffineTransform transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.0, 1.0);
                self.transform = transform;
            }];
        }];
    }];
}

- (CGRect)getBackgroundSize
{
    double offset = self.frame.size.height * 0.3;
    return CGRectMake(self.frame.origin.x + offset, self.frame.origin.y + offset, self.frame.size.width * 0.4, self.frame.size.height * 0.4);
}

@end
