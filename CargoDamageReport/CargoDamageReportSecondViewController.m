//
//  CargoDamageReportSecondViewController.m
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 17.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import "CargoDamageReportSecondViewController.h"

@interface CargoDamageReportSecondViewController ()

@end

@implementation CargoDamageReportSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
