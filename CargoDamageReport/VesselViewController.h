//
//  CargoDamageReportFirstViewController.h
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 17.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VesselViewController : UIViewController <UITextFieldDelegate>{
    UITextField  *vessel;
    UITextField  *voyageNo;
    UITextField  *imoNo;
    UITextField  *location;
    UITextField  *whoNoted;
    UIDatePicker *dateDamage;
}

@property (nonatomic, retain) IBOutlet UITextField *vessel;
@property (nonatomic, retain) IBOutlet UITextField *voyageNo;
@property (nonatomic, retain) IBOutlet UITextField *imoNo;
@property (nonatomic, retain) IBOutlet UITextField *location;
@property (nonatomic, retain) IBOutlet UITextField *whoNoted;
@property (nonatomic, retain) IBOutlet UIDatePicker *datedamage;

- (IBAction) clickedBackground;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@end
