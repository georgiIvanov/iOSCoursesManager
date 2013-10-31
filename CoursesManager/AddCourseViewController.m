//
//  AddCourseViewController.m
//  CoursesManager
//
//  Created by Georgi Ivanov on 10/31/13.
//  Copyright (c) 2013 Georgi Ivanov. All rights reserved.
//

#import "AddCourseViewController.h"

@interface AddCourseViewController ()

@end

@implementation AddCourseViewController

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
	// Do any additional setup after loading the view.
    self.titleField.text = [self.currentCourse title];
    self.authorField.text =[self.currentCourse author];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    self.dateField.text = [dateFormat stringFromDate:
                           [self.currentCourse releaseDate]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    // dismiss and remove object
    [self.delegate addCourseViewControllerDidCancel:[self currentCourse]];
}

- (IBAction)save:(id)sender {
    // dismiss and save
    [self.currentCourse setTitle:self.titleField.text];
    [self.currentCourse setAuthor:self.authorField.text];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    [self.currentCourse setReleaseDate:[dateFormat dateFromString:self.dateField.text]];
    [self.delegate addCourseViewControllerDidSave];
}
@end
