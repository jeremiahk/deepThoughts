//
//  CircleTransitionAnimator.m
//  deepThoughts
//
//  Created by Jeremiah Kistler on 12/28/15.
//  Copyright © 2015 Jeremiah Kistler. All rights reserved.
//

#import "CircleTransitionAnimator.h"
#import "SettingsViewController.h"
#import "MainViewController.h"
#import "CircleButton.h"

@implementation CircleTransitionAnimator

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.3;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    self.transitionContext = transitionContext;

    // Grab the viewControllers and take a snapshot of each.
    MainViewController *fromViewController = (MainViewController *) [transitionContext viewControllerForKey: UITransitionContextFromViewControllerKey];
    SettingsViewController *toViewController = (SettingsViewController *) [transitionContext viewControllerForKey: UITransitionContextToViewControllerKey];

    UIView *fromViewSnapshot = [fromViewController.view resizableSnapshotViewFromRect:fromViewController.view.frame afterScreenUpdates:true withCapInsets:UIEdgeInsetsZero];
    UIView *toViewSnapshot = [toViewController.view resizableSnapshotViewFromRect:toViewController.view.frame afterScreenUpdates:true withCapInsets:UIEdgeInsetsZero];
    
    // ContainerView will hold the views during the transition.
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:fromViewSnapshot];
    
    CircleButton *button = fromViewController.button;
    
    // The circle view is the view the circle mask will be applied to.
    UIView *circleView = [[UIView alloc] initWithFrame:containerView.frame];
    circleView.backgroundColor = toViewController.view.backgroundColor;
    [containerView addSubview:circleView];
    
    UIBezierPath *circleMaskPathInitial = [UIBezierPath bezierPathWithOvalInRect: button.getBackgroundSize];
    CGPoint extremePoint = CGPointMake(button.center.x - 0, button.center.y - CGRectGetHeight(toViewController.view.bounds));
    float radius = sqrt((extremePoint.x * extremePoint.x) + (extremePoint.y * extremePoint.y));
    UIBezierPath *circleMaskPathFinal = [UIBezierPath bezierPathWithOvalInRect: CGRectInset(button.frame, -radius, -radius)];

    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.path = circleMaskPathFinal.CGPath;
    circleView.layer.mask = maskLayer;

    CABasicAnimation *maskLayerAnimation = [CABasicAnimation animationWithKeyPath:@"path"];
    maskLayerAnimation.fromValue = (id)circleMaskPathInitial.CGPath;
    maskLayerAnimation.toValue = (id)circleMaskPathFinal.CGPath;
    maskLayerAnimation.duration = [self transitionDuration:transitionContext];
    maskLayerAnimation.delegate = self;
    [maskLayer addAnimation:maskLayerAnimation forKey:@"path"];

    // Add the toViewController snapshot to the circle view and animate it.
    
    [circleView addSubview: toViewSnapshot];
   
    toViewSnapshot.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.5, 0.5);
    toViewSnapshot.center = button.center;
    toViewSnapshot.alpha = 0.0;
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        toViewSnapshot.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.0, 1.0);
        toViewSnapshot.center = containerView.center;
        toViewSnapshot.alpha = 1.0;
    } completion: ^(BOOL finished) {
        [containerView addSubview:toViewController.view];
    }];
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [self.transitionContext completeTransition:YES];
    [self.transitionContext viewControllerForKey: @"UITransitionContextFromViewControllerKey"].view.layer.mask = nil;
}

@end
