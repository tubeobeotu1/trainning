//
//  MainController.m
//  DataViewtt
//
//  Created by tunguyen on 6/22/15.
//  Copyright (c) 2015 tunguyen. All rights reserved.
//

#import "MainController.h"

@interface MainController ()

@end

@implementation MainController
{
    NSArray *dataTable;
    NSArray *images;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    dataTable=[NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", nil];
    images=[NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger",nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataTable count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier=@"SimpleTableItem";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text=[dataTable objectAtIndex:indexPath.row];
    cell.imageView.image=[UIImage imageNamed:[images objectAtIndex:indexPath.row]];
    return  cell;
}

@end
