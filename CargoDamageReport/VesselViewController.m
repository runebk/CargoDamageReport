//
//  CargoDamageReportFirstViewController.m
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 17.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import "VesselViewController.h"
#import "HTAutocompleteManager.h"

@interface VesselViewController ()

@end

@implementation VesselViewController
@synthesize vessel,voyageNo,imoNo,location,whoNoted, datedamage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Release any retained subviews of the main view
    // Set a default data source for all instances.  Otherwise, you can specify the data source on individual text fields via the autocompleteDataSource property
    [HTAutocompleteTextField setDefaultAutocompleteDataSource:[HTAutocompleteManager sharedManager]];
    
    self.vessel.autocompleteType = HTAutocompleteTypeVessel;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
   
    [textField resignFirstResponder];
    
    return YES;
}

- (IBAction) clickedBackground
{
    [self.view endEditing:YES]; //make the view end editing!
    
}

@end
