//
//  TriniDict.h
//  Trini Speak Lite
//
//  Created by Sylvan Price on 2014-03-10.
//  Copyright (c) 2014 Sylvan Mortimer Price. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface TriniDict : NSManagedObject

@property (nonatomic, retain) NSString * aNum;
@property (nonatomic, retain) NSString * dTrini;
@property (nonatomic, retain) NSString * bLetter;
@property (nonatomic, retain) NSString * cCategory;
@property (nonatomic, retain) NSString * eEnglish;
@property (nonatomic, retain) NSNumber * fFav;

@end
