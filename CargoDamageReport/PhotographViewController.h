//
//  CargoDamageReportPhotographViewController.h
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 18.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotographViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:  (UIButton *)sender;
- (IBAction)selectPhoto:(UIButton *)sender;

@end
