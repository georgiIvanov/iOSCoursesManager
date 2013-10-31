//
//  CoursesTableViewController.h
//  CoursesManager
//
//  Created by Georgi Ivanov on 10/31/13.
//  Copyright (c) 2013 Georgi Ivanov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddCourseViewController.h"

@interface CoursesTableViewController : UITableViewController <AddCourseViewControllerDelegate, NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;


@end
