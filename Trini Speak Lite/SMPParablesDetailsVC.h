//
//  SMPParablesDetailsVC.h
//  Trini Speak Lite
//
//  Created by Sylvan Price on 2014-03-10.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMPParablesVC.h"

@interface SMPParablesDetailsVC : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *txtViewParableDetail;
- (IBAction)btnBack:(UIButton *)sender;
- (IBAction)btnHome:(UIButton *)sender;

@property (strong, nonatomic) id detailItem;

- (void)configureView;

@end
