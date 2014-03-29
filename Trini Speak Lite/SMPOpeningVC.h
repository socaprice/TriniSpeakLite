//
//  SMPOpeningVC.h
//  Trini Speak Lite
//
//  Created by Sylvan Price on 2014-03-10.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "SMPLetterVC.h"
#import "SMPParablesVC.h"

@interface SMPOpeningVC : UIViewController <ADBannerViewDelegate>
{
    ADBannerView *adView;
}

@property (strong, nonatomic) NSString *textForLabelCategory;//carries forward name of category chosen

- (IBAction)btnWords:(UIButton *)sender;
- (IBAction)btnPhrases:(UIButton *)sender;
- (IBAction)btnCarnival:(UIButton *)sender;
- (IBAction)btnParables:(UIButton *)sender;

@end
