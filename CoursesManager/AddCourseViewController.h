//
//  AddCourseViewController.h
//  CoursesManager
//
//  Created by Georgi Ivanov on 10/31/13.
//  Copyright (c) 2013 Georgi Ivanov. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Course.h"

@protocol AddCourseViewControllerDelegate;

@interface AddCourseViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;
@property (nonatomic, strong) Course* currentCourse;

@property (nonatomic, weak) id<AddCourseViewControllerDelegate> delegate;


- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end


@protocol AddCourseViewControllerDelegate

-(void)addCourseViewControllerDidSave;
-(void)addCourseViewControllerDidCancel:(Course*) courseToDelete;

@end