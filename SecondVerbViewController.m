//
//  SecondViewController.m
//  WordPlay
//
//  Created by Stephen T. Mata on 5/12/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "SecondVerbViewController.h"
#import "ResultsViewController.h"

@interface SecondVerbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *secondVerbTextField;

@end

@implementation SecondVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultsViewController *vc = segue.destinationViewController;
    vc.name = self.name;
    vc.firstVerb = self.firstVerb;
    vc.adjective = self.adjective;
    vc.secondVerb = self.secondVerbTextField.text;
}




- (IBAction)nextPress:(id)sender {

    if (![self.secondVerbTextField.text isEqualToString:@""]) {
        [self performSegueWithIdentifier:@"resultsSegue" sender:self];
    }
}


@end
