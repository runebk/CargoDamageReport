//
//  HTAutoCompleteVessel.m
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 23.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import "HTAutoCompleteVessel.h"

@implementation HTAutoCompleteVessel

- (void)setupAutocompleteTextField
{
    [super setupAutocompleteTextField];
    
    // Default vessels to suggest
    self.vessels = @[@"firstVessel",@"secondVessel"];
    
    self.autocompleteDataSource = self;
}

- (NSString *)textField:(HTAutocompleteTextField *)textField completionForPrefix:(NSString *)prefix ignoreCase:(BOOL)ignoreCase
{

    NSArray *textComponents = [prefix componentsSeparatedByString:@""];

    if ([textComponents count] > 1)
    {
        // If no domain is entered, use the first domain in the list
        if ([(NSString *)textComponents[1] length] == 0)
        {
            return [self.vessels objectAtIndex:0];
        }
        
        NSString *textAfterAtSign = textComponents[1];
        
        NSString *stringToLookFor;
        if (ignoreCase)
        {
            stringToLookFor = [textAfterAtSign lowercaseString];
        }
        else
        {
            stringToLookFor = textAfterAtSign;
        }
        
        for (NSString *stringFromReference in self.vessels)
        {
            NSString *stringToCompare;
            if (ignoreCase)
            {
                stringToCompare = [stringFromReference lowercaseString];
            }
            else
            {
                stringToCompare = stringFromReference;
            }
            
            if ([stringToCompare hasPrefix:stringToLookFor])
            {
                return [stringFromReference stringByReplacingCharactersInRange:[stringToCompare rangeOfString:stringToLookFor] withString:@""];
            }
            
        }
    }
    
    return @"";
}



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
