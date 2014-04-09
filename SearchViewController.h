//
//  SearchViewController.h
//  CodeManiaCore
//
//  Created by BSA univ 2 on 03/04/14.
//  Copyright (c) 2014 BSA univ 2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistManager.h"
#import "QuestionViewController.h"


@interface SearchViewController : UIViewController
<UISearchDisplayDelegate,UISearchBarDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UISearchBar *SearchBar;



@end
