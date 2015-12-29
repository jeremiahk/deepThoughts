//
//  NavigationControllerDelegate.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/28/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import "NavigationController.h"
#import "CircleTransitionAnimator.h"

@interface NavigationController ()

@end

@implementation NavigationController

-(id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {
    
    return [[CircleTransitionAnimator alloc] init];
}

@end