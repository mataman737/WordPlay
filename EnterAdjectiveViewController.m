//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Stephen T. Mata on 5/12/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "FirstVerbViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FirstVerbViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.adjective = self.adjectiveTextField.text;

    
}

- (IBAction)nextPress:(id)sender {
 if (![self.adjectiveTextField.text isEqualToString:@""]) {
        [self performSegueWithIdentifier:@"firstVerbSegue" sender:self];
 }

}


@end
