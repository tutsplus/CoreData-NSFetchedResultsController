//
//  TSPAddToDoViewController.h
//  Done
//
//  Created by Bart Jacobs on 24/07/14.
//  Copyright (c) 2014 Tuts+. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface TSPAddToDoViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
