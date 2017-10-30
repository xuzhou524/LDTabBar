//
//  LDTabBar.m
//  LDTaBar
//
//  Created by gozap on 2017/9/7.
//  Copyright © 2017年 com.longdai. All rights reserved.
//

#import "LDTabBar.h"

@implementation LDTabBar

-(void)layoutSubviews{
    [super layoutSubviews];
    
    for (UITabBarItem * item in self.items) {
        item.imageInsets = UIEdgeInsetsMake(5.0, 0, -5.0, 0);
    }
    
    for (UIControl * tabBarButton in self.subviews) {
        //设置上边的阴影效果
        if ([tabBarButton isKindOfClass:NSClassFromString(@"_UIBarBackground")]) {
            for (UIView * view in tabBarButton.subviews) {
                if ([view isKindOfClass:NSClassFromString(@"UIImageView")]) {
                    view.layer.shadowOffset = CGSizeMake(1, 1);            //偏移距离
                    view.layer.shadowOpacity = 1;                        //不透明度
                    view.layer.shadowRadius = 3.0;                         //半径
                    view.layer.shadowColor = [UIColor blackColor].CGColor; //阴影颜色
                    view.layer.shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 1)].CGPath;
                    view.backgroundColor = [UIColor clearColor];
                }
            }
        }
        //设置每次点击的动画
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            [tabBarButton addTarget:self action:@selector(tabBarButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}

- (void)tabBarButtonClick:(UIControl *)tabBarButton{
    for (UIView * imageView in tabBarButton.subviews) {
        if ([imageView isKindOfClass:NSClassFromString(@"UITabBarSwappableImageView")]) {
            //需要实现的桢动画，这里根据需求自定义
            CAKeyframeAnimation * animation = [CAKeyframeAnimation animation];
            animation.keyPath = @"transform.scale";
            animation.values = @[@1.0,@1.15,@0.9,@1.0];
            animation.duration = 1;
            animation.calculationMode = kCAAnimationCubic;
            //把动画添加上去
            [imageView.layer addAnimation:animation forKey:nil];
        }
    }
}

- (void) safeAreaInsetsDidChange{
    [super safeAreaInsetsDidChange];
    if(self.oldSafeAreaInsets.left != self.safeAreaInsets.left ||
       self.oldSafeAreaInsets.right != self.safeAreaInsets.right ||
       self.oldSafeAreaInsets.top != self.safeAreaInsets.top ||
       self.oldSafeAreaInsets.bottom != self.safeAreaInsets.bottom){
        self.oldSafeAreaInsets = self.safeAreaInsets;
        [self invalidateIntrinsicContentSize];
        [self.superview setNeedsLayout];
        [self.superview layoutSubviews];
    }
}

- (CGSize) sizeThatFits:(CGSize) size{
    CGSize s = [super sizeThatFits:size];
    if(@available(iOS 11.0, *)){
        CGFloat bottomInset = self.safeAreaInsets.bottom;
        if( bottomInset > 0 && s.height < 50) {
            s.height += bottomInset;
        }
    }
    return s;
}
@end
