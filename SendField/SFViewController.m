//
//  SFViewController.m
//  SendField
//
//  Created by Joshua Howland on 6/11/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "SFViewController.h"
#import "SentTextViewController.h"

@interface SFViewController ()

@property (nonatomic, strong) IBOutlet UILabel *instructionLabel;
@property (nonatomic, strong) IBOutlet UIButton *sendButton;
@property (nonatomic, strong) IBOutlet UITextField *textField;

@end

@implementation SFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLayoutConstraint *horizontalAlignmentConstraint = [NSLayoutConstraint constraintWithItem:self.instructionLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.sendButton attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0];
//    horizontalAlignmentConstraint.priority = UILayoutPriorityDefaultLow;
    
    [self.view addConstraint:horizontalAlignmentConstraint];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    SentTextViewController *viewController = [segue destinationViewController];
    [viewController updateSentText:self.textField.text];
}

@end
