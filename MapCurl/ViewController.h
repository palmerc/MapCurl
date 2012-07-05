//
//  ViewController.h
//  MapCurl
//
//  Created by Cameron Lowell Palmer on 05.07.12.
//  Copyright (c) 2012 Bird and Bear Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MapKit/MapKit.h>

#import "OptionsViewController.h"



@interface ViewController : UIViewController <OptionsViewControllerDelegate> {
@private
    MKMapView *_mapView;
    
    NSInteger _currentMapType;
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@end
