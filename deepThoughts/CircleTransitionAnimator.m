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

@implementation CircleTransitionAnimator

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.5;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    self.transitionContext = transitionContext;
    
    UIView *containerView = [transitionContext containerView];
    MainViewController *fromViewController = (MainViewController *) [transitionContext viewControllerForKey: UITransitionContextFromViewControllerKey];
    SettingsViewController *toViewController = (SettingsViewController *) [transitionContext viewControllerForKey: UITransitionContextToViewControllerKey];
    UIButton *button = fromViewController.button;
    [containerView addSubview:toViewController.view];
    
    UIBezierPath *circleMaskPathInitial = [UIBezierPath bezierPathWithOvalInRect: button.frame];
    CGPoint extremePoint = CGPointMake(button.center.x - 0, button.center.y - CGRectGetHeight(toViewController.view.bounds));
    float radius = sqrt((extremePoint.x * extremePoint.x) + (extremePoint.y * extremePoint.y));
    UIBezierPath *circleMaskPathFinal = [UIBezierPath bezierPathWithOvalInRect: CGRectInset(button.frame, -radius, -radius)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.path = circleMaskPathFinal.CGPath;
    toViewController.view.layer.mask = maskLayer;
    
    CABasicAnimation *maskLayerAnimation = [CABasicAnimation animationWithKeyPath:@"path"];
    maskLayerAnimation.fromValue = (id)circleMaskPathInitial.CGPath;
    maskLayerAnimation.toValue = (id)circleMaskPathFinal.CGPath;
    maskLayerAnimation.duration = [self transitionDuration:transitionContext];
    maskLayerAnimation.delegate = self;
    [maskLayer addAnimation:maskLayerAnimation forKey:@"path"];
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [self.transitionContext completeTransition: [self.transitionContext transitionWasCancelled]];
    [self.transitionContext viewControllerForKey: @"UITransitionContextFromViewControllerKey"].view.layer.mask = nil;
}

@end
