//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Sandquist, Cassandra G on 5/23/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()
@property (nonatomic, strong) UIColor* circleColor;
@end
@implementation BNRHypnosisView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.*/
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    float maxRadius = hypot(bounds.size.height, bounds.size.width) / 2.0;

    UIBezierPath* bezierPath = [[UIBezierPath alloc] init];

    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [bezierPath moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [bezierPath addArcWithCenter:center
                              radius:currentRadius
                          startAngle:0.0
                            endAngle:M_PI * 2.0
                           clockwise:YES];
    }
    [bezierPath setLineWidth:10];

    [self.circleColor setStroke];

    [bezierPath stroke];
}

- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{
    NSLog(@"%@ was touched", self);

    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;

    UIColor* randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    self.circleColor = randomColor;
}
- (void)setCircleColor:(UIColor*)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}
@end
