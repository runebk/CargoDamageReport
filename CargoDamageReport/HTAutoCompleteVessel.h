//
//  HTAutoCompleteVessel.h
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 23.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import "HTAutocompleteTextField.h"

@interface HTAutoCompleteVessel : HTAutocompleteTextField <HTAutocompleteDataSource>


/*
 * A list of email domains to suggest
 */
@property (nonatomic, copy) NSArray *vessels; // modify to use your own custom list of vessels

@end
