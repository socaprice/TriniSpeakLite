//
//  SMPLetterVC.h
//  Trini Speak Lite
//
//  Created by Sylvan Price on 2014-03-10.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMPWPCDetailsVC.h"
#import "TriniDict.h"


@interface SMPLetterVC : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblCategory;//Displays Category title

@property (strong, nonatomic) NSString *lblCategoryText;//Gets title from past view via segue
@property (strong, nonatomic) NSString *lblWordsEtc;//Passes letter onto next view via segue


- (IBAction)btnA:(UIButton *)sender;
- (IBAction)btnB:(UIButton *)sender;
- (IBAction)btnC:(UIButton *)sender;
- (IBAction)btnD:(UIButton *)sender;
- (IBAction)btnE:(UIButton *)sender;
- (IBAction)btnF:(UIButton *)sender;
- (IBAction)btnG:(UIButton *)sender;
- (IBAction)btnH:(UIButton *)sender;
- (IBAction)btnI:(UIButton *)sender;
- (IBAction)btnJ:(UIButton *)sender;
- (IBAction)btnK:(UIButton *)sender;
- (IBAction)btnL:(UIButton *)sender;
- (IBAction)btnM:(UIButton *)sender;
- (IBAction)btnN:(UIButton *)sender;
- (IBAction)btnO:(UIButton *)sender;
- (IBAction)btnP:(UIButton *)sender;
- (IBAction)btnQ:(UIButton *)sender;
- (IBAction)btnR:(UIButton *)sender;
- (IBAction)btnS:(UIButton *)sender;
- (IBAction)btnT:(UIButton *)sender;
- (IBAction)btnU:(UIButton *)sender;
- (IBAction)btnV:(UIButton *)sender;
- (IBAction)btnW:(UIButton *)sender;
- (IBAction)btnX:(UIButton *)sender;
- (IBAction)btnY:(UIButton *)sender;
- (IBAction)btnZ:(UIButton *)sender;

- (IBAction)btnHOME:(UIButton *)sender;
@end
