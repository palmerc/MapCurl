//
//  OptionsViewController.m
//  MapCurl
//
//  Created by Cameron Lowell Palmer on 05.07.12.
//  Copyright (c) 2012 Bird and Bear Productions. All rights reserved.
//

#import "OptionsViewController.h"



@interface OptionsViewController ()
@end



@implementation OptionsViewController
@synthesize delegate = _delegate;
@synthesize mapTypeSegmentedControl = _mapTypeSegmentedControl;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mapTypeSegmentedControl.selectedSegmentIndex = _selectedSegmentIndex;
}



//
//
- (IBAction)dismissOptions:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
    
    if (_delegate != nil) {
        [_delegate didCompleteOptionsSelection:nil];
    }
}

- (IBAction)changeMapType:(id)sender {
    [self dismissModalViewControllerAnimated:YES];

    if (_delegate != nil) {
        [_delegate didCompleteOptionsSelection:sender];
    }
}

- (void)setSelectedSegmentIndex:(NSInteger)index {
    _selectedSegmentIndex = index;
}

@end
