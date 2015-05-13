//
//  FirstVerbViewController.m
//  WordPlay
//
//  Created by Stephen T. Mata on 5/12/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "FirstVerbViewController.h"
#import "SecondVerbViewController.h"


@interface FirstVerbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstVerbTextField;

@end

@implementation FirstVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondVerbViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.firstVerb = self.firstVerbTextField.text;
    vc.adjective = self.adjective;


}


- (IBAction)nextVerbPress:(id)sender {

    if (![self.firstVerbTextField.text isEqualToString:@""]) {
        [self performSegueWithIdentifier:@"secondVerbSegue" sender:self];
    }
}

@end
