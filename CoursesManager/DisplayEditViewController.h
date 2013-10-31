//
//  DisplayEditViewController.h
//  CoursesManager
//
//  Created by Georgi Ivanov on 10/31/13.
//  Copyright (c) 2013 Georgi Ivanov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@interface DisplayEditViewController : UIViewController

@property (nonatomic, strong) Course* currentCourse;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;

@end
