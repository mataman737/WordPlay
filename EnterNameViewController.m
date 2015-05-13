//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Stephen T. Mata on 5/12/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterAdjectiveViewController *vc = segue.destinationViewController;
    vc.name = self.nameTextField.text;



}



- (IBAction)nextPress:(id)sender
{
    if (![self.nameTextField.text isEqualToString:@""]) {
        [self performSegueWithIdentifier:@"adjectiveSegue" sender:self];
    }
}

@end
