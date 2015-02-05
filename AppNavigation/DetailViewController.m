//
//  DetailViewController.m
//  AppNavigation
//
//  Created by Ajay Sharma on 12/10/14.
//  Copyright (c) 2014 ___v2Tech Ventures___. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    UIAlertView *alertv = [[UIAlertView alloc]initWithTitle:@"Test Alert" message:@"Hey.. .thats a debug build" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertv show];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
