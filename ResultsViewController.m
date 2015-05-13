//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Stephen T. Mata on 5/12/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@property NSArray *sentenceArray;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    

    //////////////////////////////////////
    //////////////////////////////////////
    //////////////////////////////////////
    //////////////////////////////////////




    self.sentenceArray = @[@"The name is ", @". The adjective is ", @". The first verb is ", @". The second verb is ", @"."];


    NSArray *words = @[self.name, self.adjective, self.firstVerb, self.secondVerb];

    NSMutableAttributedString *finalString = [[NSMutableAttributedString alloc] initWithString:@""];


   // NSFont *boldFontName = [NSFont boldSystemFontOfSize:12];



    for (int i = 0; i < 4; i++) {



       // NSRange boldedRange = NSMakeRange(0, word.length);
        NSDictionary *boldAttributes = @{NSFontAttributeName : [UIFont boldSystemFontOfSize:12]};

        NSMutableAttributedString *word = [[NSMutableAttributedString alloc] initWithString:words[i] attributes:boldAttributes];

//        [word beginEditing];
//        [word addAttribute:NSFontAttributeName value:boldFontName range:boldedRange];
//        [word endEditing];

        [finalString appendAttributedString:[[NSMutableAttributedString alloc] initWithString:self.sentenceArray[i]]];
        [finalString appendAttributedString:word];

    }

    [finalString appendAttributedString:[[NSMutableAttributedString alloc] initWithString:self.sentenceArray[4]]];

    self.resultsTextView.attributedText = finalString;



}




@end
