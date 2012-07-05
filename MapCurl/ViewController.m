//
//  ViewController.m
//  MapCurl
//
//  Created by Cameron Lowell Palmer on 05.07.12.
//  Copyright (c) 2012 Bird and Bear Productions. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
@end



@implementation ViewController
@synthesize mapView = _mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
  
    _currentMapType = 0;
    
    [_mapView showsUserLocation];
    [_mapView setUserTrackingMode:MKUserTrackingModeFollow];
}

- (void)viewDidUnload {
    [super viewDidUnload];    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    OptionsViewController *optionsViewController = segue.destinationViewController;
    
    optionsViewController.delegate = self;
    [optionsViewController setSelectedSegmentIndex:_currentMapType];
}

- (void)didCompleteOptionsSelection:(id)sender {
    if (sender != nil) {
        UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
        
        NSInteger index = segmentedControl.selectedSegmentIndex;
        switch (index) {
            case 0:
                _mapView.mapType = MKMapTypeStandard;
                break;
            case 1:
                _mapView.mapType = MKMapTypeHybrid;
                break;
            case 2:
                _mapView.mapType = MKMapTypeSatellite;
                break;
            default:
                index = 0;
                _mapView.mapType = MKMapTypeStandard;
                break;
        }
        
        _currentMapType = index;
    }
}

@end
