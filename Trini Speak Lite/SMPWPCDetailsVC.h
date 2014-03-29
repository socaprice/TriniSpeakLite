//
//  SMPWPCDetailsVC.h
//  Trini Speak Lite
//
//  Created by Sylvan Price on 2014-03-10.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "TriniDict.h"

@interface SMPWPCDetailsVC : UIViewController <ADBannerViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource>
{
    ADBannerView *adView;
}


@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

@property (strong, nonatomic) NSString *lblLetterText; //Text for Letter chosen on View
@property (strong, nonatomic) NSString *lblCategoryText; // Text for passing into Predicate

@property (strong, nonatomic) IBOutlet UILabel *lblLetter;
@property (strong, nonatomic) IBOutlet UITextView *txtMeaning;

@property (strong, nonatomic) NSString *txtHoldMeaning;

- (IBAction)btnBack:(UIButton *)sender;
- (IBAction)btnHome:(UIButton *)sender;


@end