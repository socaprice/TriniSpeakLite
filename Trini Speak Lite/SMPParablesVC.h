//
//  SMPParablesVC.h
//  Trini Speak Lite
//
//  Created by Sylvan Price on 2014-03-10.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "TriniDict.h"
#import "SMPParablesDetailsVC.h"

@interface SMPParablesVC : UIViewController <ADBannerViewDelegate>
{
    ADBannerView *adView;
}

@property (strong, nonatomic) IBOutlet UILabel *lblCategory;
@property (strong, nonatomic) NSString *lblCategoryText;//Gets title from past view via segue and also passes it into Predicate

@property (strong, nonatomic) NSString *txtMeaning; //English meaning to be passed onto next View

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)btnHome:(UIButton *)sender;
@end
