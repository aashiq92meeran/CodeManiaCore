//
//  LevelViewController.h
//  CodeManiaCore
//
//  Created by BSA univ 2 on 25/03/14.
//  Copyright (c) 2014 BSA univ 2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistManager.h"
#import "ViewController.h"
#import"QuestionViewController.h"

@class PlistManager;
@class ViewController;
@class QuestionViewController;

@interface LevelViewController : UIViewController

@property (nonatomic,strong) PlistManager *plistobj;
@property (nonatomic,strong)NSArray *buttonsArray;
@property (nonatomic,strong)NSArray *beginnerArray;
@property (nonatomic,strong) NSString *current;
@property (nonatomic,strong) NSString *sendingdistancelevalview;

@property(nonatomic,strong)QuestionViewController *wobj;

@property (nonatomic,strong) NSString *complixity;
@end
