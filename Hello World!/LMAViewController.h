//
//  LMAViewController.h
//  Hello World!
//
//  Created by Jakob Iversen on 8/16/13.
//  Copyright (c) 2013 Learning Mobile Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LMAViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
@property (weak, nonatomic) IBOutlet UILabel *lblOutput;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
- (IBAction)showOutput:(id)sender;
- (IBAction)resetOutput:(id)sender;

- (IBAction)backgroundTap:(id)sender;
@end
