//
//  OptionsViewController.h
//  MapCurl
//
//  Created by Cameron Lowell Palmer on 05.07.12.
//  Copyright (c) 2012 Bird and Bear Productions. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol OptionsViewControllerDelegate <NSObject>
- (void)didCompleteOptionsSelection:(id)sender;
@end



@interface OptionsViewController : UIViewController {
@private
    __weak id <OptionsViewControllerDelegate> _delegate;
    __weak UISegmentedControl *_mapTypeSegmentedControl;
    
    NSInteger _selectedSegmentIndex;
}

@property (weak, nonatomic) id <OptionsViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mapTypeSegmentedControl;

- (IBAction)dismissOptions:(id)sender;
- (IBAction)changeMapType:(id)sender;
- (void)setSelectedSegmentIndex:(NSInteger)index;
@end
