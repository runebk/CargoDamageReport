//
//  DetailTableCell.m
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 22.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import "DetailTableCell.h"

@implementation DetailTableCell

@synthesize nameLabel = _nameLabel;
@synthesize statusLabel = _statusLabel;
@synthesize actionButton = _actionButton;
@synthesize thumbnailImageView = _thumbnailImageView;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
