//
//  Course.h
//  CoursesManager
//
//  Created by Georgi Ivanov on 10/31/13.
//  Copyright (c) 2013 Georgi Ivanov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Course : NSManagedObject

@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSDate * releaseDate;
@property (nonatomic, retain) NSString * title;

@end
