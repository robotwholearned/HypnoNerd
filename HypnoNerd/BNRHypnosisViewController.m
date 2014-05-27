//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Sandquist, Cassandra G on 5/26/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@interface BNRHypnosisViewController ()

@end

@implementation BNRHypnosisViewController

- (void)loadView
{
    CGRect frame = [[UIScreen mainScreen] bounds];
    BNRHypnosisView* backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    self.view = backgroundView;
}

- (instancetype)initWithNibName:(NSString*)nibNameOrNil bundle:(NSBundle*)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        self.tabBarItem.image = [UIImage imageNamed:@"Hypno"];
    }
    return self;
}
@end
