//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by Sandquist, Cassandra G on 5/26/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker* datepicker;

@end

@implementation BNRReminderViewController

- (IBAction)addReminder:(id)sender
{
    NSDate* date = self.datepicker.date;
    NSLog(@"Set a reminder for: %@", date);
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.alertBody = @"Hypnotize Me!";
    localNotification.fireDate = date;

    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}
- (instancetype)initWithNibName:(NSString*)nibNameOrNil bundle:(NSBundle*)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Reminder";
        self.tabBarItem.image = [UIImage imageNamed:@"Time"];
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"BNRReminderViewController did load its view");
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.datepicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}
@end
