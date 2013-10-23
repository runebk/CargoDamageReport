//
//  CargoDamageReportSecondViewController.h
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 17.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CargoViewController : UIViewController <UITextFieldDelegate>
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
- (IBAction) clickedBackground;

@end
