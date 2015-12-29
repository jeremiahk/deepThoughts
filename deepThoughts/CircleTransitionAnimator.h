//
//  CircleTransitionAnimator.h
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/28/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CircleTransitionAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, strong) id<UIViewControllerContextTransitioning> transitionContext;

@end
