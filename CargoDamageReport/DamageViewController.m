//
//  DamageViewController.m
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 23.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import "DamageViewController.h"

@interface DamageViewController ()

@end

@implementation DamageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.damageOccur.layer.borderWidth = 2.0f;
    self.damageOccur.layer.borderColor = [[UIColor grayColor] CGColor];
    
    self.remarks.layer.borderWidth = 2.0f;
    self.remarks.layer.borderColor = [[UIColor grayColor] CGColor];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
