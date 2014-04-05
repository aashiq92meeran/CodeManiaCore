//
//  ViewController.h
//  CodeManiaCore
//
//  Created by BSA univ 2 on 25/03/14.
//  Copyright (c) 2014 BSA univ 2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistManager.h"
#import "LevelViewController.h"

@class PlistManager;
@class LevelViewController;
@class weeksViewController;

@interface ViewController : UIViewController

@property (nonatomic,strong) PlistManager *plistobj;
@property (nonatomic,strong)NSArray *buttonsArray;
@property (nonatomic,strong)NSArray *beginnerArray;

@property (nonatomic,strong) NSString *distance;
@property (nonatomic,strong) LevelViewController *lobj;
@end
