//
//  TSPAddToDoViewController.m
//  Done
//
//  Created by Bart Jacobs on 24/07/14.
//  Copyright (c) 2014 Tuts+. All rights reserved.
//

#import "TSPAddToDoViewController.h"

@interface TSPAddToDoViewController ()

@end

@implementation TSPAddToDoViewController

#pragma mark -
#pragma mark Actions
- (IBAction)cancel:(id)sender {
    // Dismiss View Controller
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(id)sender {
    // Helpers
    NSString *name = self.textField.text;
    
    if (name && name.length) {
        // Create Entity
        NSEntityDescription *entity = [NSEntityDescription entityForName:@"TSPItem" inManagedObjectContext:self.managedObjectContext];
        
        // Initialize Record
        NSManagedObject *record = [[NSManagedObject alloc] initWithEntity:entity insertIntoManagedObjectContext:self.managedObjectContext];
        
        // Populate Record
        [record setValue:name forKey:@"name"];
        [record setValue:[NSDate date] forKey:@"createdAt"];
        
        // Save Record
        NSError *error = nil;
        
        if ([self.managedObjectContext save:&error]) {
            // Dismiss View Controller
            [self dismissViewControllerAnimated:YES completion:nil];
            
        } else {
            if (error) {
                NSLog(@"Unable to save record.");
                NSLog(@"%@, %@", error, error.localizedDescription);
            }
            
            // Show Alert View
            [[[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your to-do could not be saved." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        }
        
    } else {
        // Show Alert View
        [[[UIAlertView alloc] initWithTitle:@"Warning" message:@"Your to-do needs a name." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
}

@end
