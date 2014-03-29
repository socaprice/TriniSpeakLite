//
//  SMPWPCDetailsVC.m
//  Trini Speak Lite
//
//  Created by Sylvan Price on 2014-03-10.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import "SMPWPCDetailsVC.h"

@interface SMPWPCDetailsVC ()

@end

@implementation SMPWPCDetailsVC

@synthesize fetchedResultsController = _fetchedResultsController;

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
    _lblLetter.text = _lblLetterText;
    
    //Passes the managedObjectContext along from the AppDelegate
    id delegate = [[UIApplication sharedApplication] delegate];
    self.managedObjectContext = [delegate managedObjectContext];

    NSError *error = nil;
    if (![[self fetchedResultsController]performFetch:&error]) {
        // Handle the error
        NSLog(@"Error! %@",error);
        //abort();
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark PickerView Controls section
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [[self.fetchedResultsController fetchedObjects] count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    // Display the Words we've fetched on the picker
    TriniDict *slang = [[self.fetchedResultsController fetchedObjects] objectAtIndex:row];
    return slang.dTrini;

    //Another way to do it -- return [[[self.fetchedResultsController fetchedObjects] objectAtIndex:row]valueForKey:@"dTrini"];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //Another way to do it -- _txtMeaning.text = [[[self.fetchedResultsController fetchedObjects] objectAtIndex:row]valueForKey:@"eEnglish"];

    TriniDict *slang = [[self.fetchedResultsController fetchedObjects] objectAtIndex:row];
    _txtMeaning.text = slang.eEnglish;

    //Sylvan Add
    NSLog(@"Number of rows: %i",[[self.fetchedResultsController fetchedObjects] count]);
    
    
    
    if ([[self.fetchedResultsController fetchedObjects] count] < 2) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Oops!" message:@"Nothing fits that criteria." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    
        if (slang.dTrini == NULL && slang.eEnglish == NULL) {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Oops!" message:@"Nothing fits that criteria." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];
        }
    //    NSLog(@"this shows: %@",slang.dTrini);
    //    NSLog(@"this shows for English: %@",slang.eEnglish);

    //Sylvan End
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UILabel *tView = (UILabel *)view;
    if (!tView){
        tView = [[UILabel alloc] init];
        // Setup label properties - frame, font, colors etc
        tView.font = [UIFont boldSystemFontOfSize:18];
        tView.adjustsFontSizeToFitWidth = YES;
        tView.textAlignment = NSTextAlignmentCenter;
    }
    // Fill the label text here
    [tView setText:[[[self.fetchedResultsController fetchedObjects] objectAtIndex:row]valueForKey:@"dTrini"]];
    return tView;
}

#pragma mark -
#pragma mark Fetched Results Controller section
-(NSFetchedResultsController *) fetchedResultsController {
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"TriniDict"
                                              inManagedObjectContext:[self managedObjectContext]];
    [fetchRequest setEntity:entity];

    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"cCategory == %@ AND bLetter == %@",_lblCategoryText,_lblLetterText];
    [fetchRequest setPredicate:predicate];

    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"dTrini"
                                                                   ascending:YES];
    NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
    [fetchRequest setSortDescriptors:sortDescriptors];

    
    _fetchedResultsController = [[NSFetchedResultsController alloc]initWithFetchRequest:fetchRequest managedObjectContext:[self managedObjectContext] sectionNameKeyPath:@"bLetter" cacheName:nil];
    
    return _fetchedResultsController;
    
}

- (IBAction)btnBack:(UIButton *)sender {
}

- (IBAction)btnHome:(UIButton *)sender {
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [banner setAlpha:1];
    [UIView commitAnimations];
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [banner setAlpha:0];
    [UIView commitAnimations];
}

@end
