//
//  DisplayEditViewController.m
//  CoursesManager
//
//  Created by Georgi Ivanov on 10/31/13.
//  Copyright (c) 2013 Georgi Ivanov. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"

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

- (IBAction)doneEditing:(id)sender {
//    self.titleField.enabled = YES;
//    self.authorField.enabled = YES;
//    self.dateField.enabled = YES;
//    
//    self.titleField.borderStyle = UITextBorderStyleRoundedRect;
//    self.authorField.borderStyle = UITextBorderStyleRoundedRect;
//    self.dateField.borderStyle = UITextBorderStyleRoundedRect;
//    
//    self.editButton.hidden = YES;
//    self.doneButton.hidden = NO;
    [self setUIElementsVisibility:NO borderStyle:UITextBorderStyleNone editBtnVisibility:NO doneBtnVisibility:YES];
    
    _currentCourse.title = self.titleField.text;
    _currentCourse.author = self.authorField.text;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy-MM-dd"];
    
    _currentCourse.releaseDate = [df dateFromString:self.dateField.text];
    
    AppDelegate *myApp =(AppDelegate*) [[UIApplication sharedApplication]delegate];
    [myApp saveContext];
}


- (IBAction)startEditing:(id)sender {
    [self setUIElementsVisibility:YES borderStyle:UITextBorderStyleRoundedRect editBtnVisibility:YES doneBtnVisibility:NO];
}

-(void)setUIElementsVisibility:(BOOL)fields borderStyle:(UITextBorderStyle)border editBtnVisibility:(BOOL)editV doneBtnVisibility:(BOOL)doneV
{
    self.titleField.enabled = fields;
    self.authorField.enabled = fields;
    self.dateField.enabled = fields;
    
    self.titleField.borderStyle = border;
    self.authorField.borderStyle = border;
    self.dateField.borderStyle = border;
    
    self.editButton.hidden = editV;
    self.doneButton.hidden = doneV;

}
@end
