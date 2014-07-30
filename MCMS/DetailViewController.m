//
//  DetailViewController.m
//  MCMS
//
//  Created by Efrén Reyes Torres on 7/29/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (strong, nonatomic) IBOutlet UIButton *editButton;
@property (strong, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (strong, nonatomic) IBOutlet UITextView *nameTextView;
@property (strong, nonatomic) IBOutlet UIImageView *creaturePicture;

@end

@implementation DetailViewController

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
    self.nameLabel.text = self.magicalCreature.name;
    [self.nameLabel sizeToFit];
    self.descriptionLabel.text = self.magicalCreature.description;
    [self.descriptionLabel sizeToFit];
    self.creaturePicture.image = [UIImage imageNamed:self.magicalCreature.picture];
}

- (IBAction)onEditButtonPressed:(id)sender {

    UIButton *btn = (id)sender;
    NSLog(@"Edit button pressed: %@", btn.titleLabel.text);
    if ([btn.titleLabel.text isEqualToString:@"Edit"]) {
        NSLog(@"Edit Button");
        [sender setTitle:@"Done" forState: UIControlStateNormal];
        self.nameTextView.hidden = NO;
        self.descriptionTextView.hidden = NO;
        self.nameTextView.text = self.nameLabel.text;
        self.descriptionTextView.text = self.descriptionLabel.text;
    } else {
        NSLog(@"Done Button");
        [sender setTitle:@"Edit" forState: UIControlStateNormal];
        self.nameLabel.text = self.nameTextView.text;
        self.descriptionLabel.text = self.descriptionTextView.text;
        self.nameTextView.hidden = YES;
        self.descriptionTextView.hidden = YES;
        self.magicalCreature.name = self.nameTextView.text;
        self.magicalCreature.description = self.descriptionTextView.text;
        [self.nameTextView resignFirstResponder];
        [self.descriptionTextView resignFirstResponder];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
