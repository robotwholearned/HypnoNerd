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
@end
