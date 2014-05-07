//
//  LMAViewController.m
//  Hello World!
//
//  Created by Jakob Iversen on 8/16/13.
//  Copyright (c) 2013 Learning Mobile Apps. All rights reserved.
//

#import "LMAViewController.h"

@interface LMAViewController ()

@end

@implementation LMAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showOutput:(id)sender {
    NSString *fname = [_txtName text];
    NSString *lname = [_txtLastName text];
    NSString *output;
    if([fname isEqualToString:@""]) {
        if([lname isEqualToString:@""]) {
            output = @"Hello World!";
        } else {
            output = [NSString stringWithFormat:@"Hello Mr. or Mrs. %@!", lname];
        }
    }
    else if([lname isEqualToString:@""]) {
        output = [NSString stringWithFormat:@"Hello %@!", fname];
    }
    else {
        output = [NSString stringWithFormat:@"Hello %@ %@!", fname, lname];
    }
    _lblOutput.text = output;
}

- (IBAction)resetOutput:(id)sender {
    _lblOutput.text = @"Hello World!";
    
}

//Dismiss keyboard
- (IBAction)backgroundTap:(id)sender
{
    [self.view endEditing:YES];
}

@end
