//
//  CargoDamageReportFirstViewController.m
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 17.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import "VesselViewController.h"

@interface VesselViewController ()

@end

@implementation VesselViewController
@synthesize vessel,voyageNo,imoNo,location,whoNoted, datedamage;

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

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
   
    [textField resignFirstResponder];
    
    return YES;
}

- (IBAction) clickedBackground
{
    [self.view endEditing:YES]; //make the view end editing!
    
}

@end
