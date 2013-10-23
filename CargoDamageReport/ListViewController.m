//
//  CargoDamageReportListViewController.m
//  CargoDamageReport
//
//  Created by Rune Bleken Kulstad on 22.10.13.
//  Copyright (c) 2013 Capra consulting. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

{
    NSArray *tableData;
    NSArray *thumbnails;
    NSArray *statusData;
    NSArray *actionData;
}

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
	// Do any additional setup after loading the view.
    tableData = [NSArray arrayWithObjects:@"Damage report 1", @"Damage report 2", nil];
    thumbnails = [NSArray arrayWithObjects:@"sent.png",@"inprogress",nil];
    statusData = [NSArray arrayWithObjects:@"Sent",@"In progress",nil];
    actionData = [NSArray arrayWithObjects:@"Resend",@"Send",nil];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *DetailTableIdentifier = @"DetailCell";
    
    DetailTableCell *cell = (DetailTableCell *)[tableView dequeueReusableCellWithIdentifier:DetailTableIdentifier];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"DetailCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.statusLabel.text = [statusData objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    UIButton *actionButton  = cell.actionButton;
    [actionButton setTitle:[actionData objectAtIndex:indexPath.row]  forState: UIControlStateNormal];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailsController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detail"];
    [self.navigationController pushViewController:detail animated:YES];
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

@end