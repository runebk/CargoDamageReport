//
//  DetailTableCell.h
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 22.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *statusLabel;
@property (nonatomic, weak) IBOutlet UIButton *actionButton;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;


@end
