//
//  ViewViewController.h
//  CodeManiaCore
//
//  Created by BSA univ 2 on 25/03/14.
//  Copyright (c) 2014 BSA univ 2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistManager.h"
#import "ViewController.h"

#import "SearchViewController.h"

@class PlistManager;
@class ViewViewController;
@class QuestionViewController;
@class SearchViewController;

@interface ViewViewController : UIViewController
@property (nonatomic,strong) NSString *qn;
@property (nonatomic,strong) NSMutableArray *itsToDoChecked;
@property (nonatomic,strong) NSString *a;
@property (nonatomic,strong) NSString *complixity;
@property (nonatomic,strong) NSString *caste;
@property (nonatomic,strong) PlistManager *plistobj;
@property (nonatomic,strong) NSMutableArray *buttonsArray;
@property (nonatomic, retain) NSArray *rootOfPlist;
@property (nonatomic, retain) NSString *celltext;
@property (nonatomic, retain) NSString *current;

@property (nonatomic,strong) SearchViewController *sobj;


@property (strong, nonatomic) IBOutlet UITableView *tableview;






@end
