//
//  DisplayEditViewController.m
//  CoursesManager
//
//  Created by Georgi Ivanov on 10/31/13.
//  Copyright (c) 2013 Georgi Ivanov. All rights reserved.
//

#import "DisplayEditViewController.h"

@interface DisplayEditViewController ()

@end

@implementation DisplayEditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.titleField.text = [self.currentCourse title];
    self.authorField.text = [self.currentCourse author];
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd"];
    self.dateField.text = [df stringFromDate:[self.currentCourse releaseDate]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
