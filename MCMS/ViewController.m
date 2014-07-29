//
//  ViewController.m
//  MCMS
//
//  Created by Efrén Reyes Torres on 7/29/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    MagicalCreature *medusa = [[MagicalCreature alloc] initWithName:@"Medusa" description:@"Has theface of a hideous human female with living venomous snakes in place of hair, gazing directly into her eyes would turn onlookers to stone"];
    MagicalCreature *unicorn = [[MagicalCreature alloc] initWithName:@"Unicorn" description:@"Beast with a large, pointed, spiraling horn projecting from its forehead"];
    MagicalCreature *gnome = [[MagicalCreature alloc] initWithName:@"Gnome" description:@"Diminutive spirit in Renaissance magic and alchemy"];
    self.creatures = [NSMutableArray arrayWithObjects:medusa, unicorn, gnome, nil];

}

#pragma mark Actions
- (IBAction)onAddButtonPressed:(id)sender {
    MagicalCreature *newCreature;
    if (![self.textField.text isEqualToString:@""]) {
        newCreature = [[MagicalCreature alloc] initWithName:self.textField.text description:@"Without description"];
        [self.creatures addObject:newCreature];
        [self.tableView reloadData];
        self.textField.text = @"";

    }
    [self.view endEditing:YES];
}


#pragma mark TableView Initializers
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCellID"];
    cell.textLabel.text = creature.name;
    cell.detailTextLabel.text = creature.description;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

@end
