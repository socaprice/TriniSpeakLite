//
//  SMPLetterVC.m
//  Trini Speak Lite
//
//  Created by Sylvan Price on 2014-03-10.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPLetterVC.h"

@interface SMPLetterVC ()

@end

@implementation SMPLetterVC

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
    _lblCategory.text = _lblCategoryText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"wpcMeaningSegue"]) {
        SMPWPCDetailsVC *wpcdvc = (SMPWPCDetailsVC *) [segue destinationViewController];
        wpcdvc.lblLetterText = _lblWordsEtc;
        wpcdvc.lblCategoryText = _lblCategoryText;
    }
}

-(IBAction)returnToLetterList:(UIStoryboardSegue *)segue{
    //just return to Letter page
}


- (IBAction)btnA:(UIButton *)sender {
    _lblWordsEtc = @"A";
}

- (IBAction)btnB:(UIButton *)sender {
    _lblWordsEtc = @"B";
}

- (IBAction)btnC:(UIButton *)sender {
    _lblWordsEtc = @"C";
}

- (IBAction)btnD:(UIButton *)sender {
    _lblWordsEtc = @"D";
}

- (IBAction)btnE:(UIButton *)sender {
    _lblWordsEtc = @"E";
}

- (IBAction)btnF:(UIButton *)sender {
    _lblWordsEtc = @"F";
}

- (IBAction)btnG:(UIButton *)sender {
    _lblWordsEtc = @"G";
}

- (IBAction)btnH:(UIButton *)sender {
    _lblWordsEtc = @"H";
}

- (IBAction)btnI:(UIButton *)sender {
    _lblWordsEtc = @"I";
}

- (IBAction)btnJ:(UIButton *)sender {
    _lblWordsEtc = @"J";
}

- (IBAction)btnK:(UIButton *)sender {
    _lblWordsEtc = @"K";
}

- (IBAction)btnL:(UIButton *)sender {
    _lblWordsEtc = @"L";
}

- (IBAction)btnM:(UIButton *)sender {
    _lblWordsEtc = @"M";
}

- (IBAction)btnN:(UIButton *)sender {
    _lblWordsEtc = @"N";
}

- (IBAction)btnO:(UIButton *)sender {
    _lblWordsEtc = @"O";
}

- (IBAction)btnP:(UIButton *)sender {
    _lblWordsEtc = @"P";
}

- (IBAction)btnQ:(UIButton *)sender {
    _lblWordsEtc = @"Q";
}

- (IBAction)btnR:(UIButton *)sender {
    _lblWordsEtc = @"R";
}

- (IBAction)btnS:(UIButton *)sender {
    _lblWordsEtc = @"S";
}

- (IBAction)btnT:(UIButton *)sender {
    _lblWordsEtc = @"T";
}

- (IBAction)btnU:(UIButton *)sender {
    _lblWordsEtc = @"U";
}

- (IBAction)btnV:(UIButton *)sender {
    _lblWordsEtc = @"V";
}

- (IBAction)btnW:(UIButton *)sender {
    _lblWordsEtc = @"W";
}

- (IBAction)btnX:(UIButton *)sender {
    _lblWordsEtc = @"X";
}

- (IBAction)btnY:(UIButton *)sender {
    _lblWordsEtc = @"Y";
}

- (IBAction)btnZ:(UIButton *)sender {
    _lblWordsEtc = @"Z";
}

- (IBAction)btnHOME:(UIButton *)sender {
}

@end
