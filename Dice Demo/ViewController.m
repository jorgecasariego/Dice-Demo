//
//  ViewController.m
//  Dice Demo
//
//  Created by Jorge Casariego on 03/02/14.
//  Copyright (c) 2014 Jorge Casariego. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rollClicked:(id)sender
{
    int firstRandomNumber = (arc4random() % 6) + 1;
    int secondRandomNumber = (arc4random() % 6) + 1;
    int sum = firstRandomNumber + secondRandomNumber;
    
    //Set text label
    self.sumLabel.text = [NSString stringWithFormat:@"The sum is %i", sum];
    
    //Set first Dice Image View
    NSString *firstDiceImageName = [NSString stringWithFormat:@"Dice%i", firstRandomNumber];
    self.diceOneImageView.image = [UIImage imageNamed:firstDiceImageName];
    
    //Set second Dice Image View
    NSString *secondDiceImageName = [NSString stringWithFormat:@"Dice%i", secondRandomNumber];
    self.diceTwoImageView.image = [UIImage imageNamed:secondDiceImageName];

}


@end
