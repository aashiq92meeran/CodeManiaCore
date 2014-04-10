//
//  QuestionViewController.h
//  CodeManiaCore
//
//  Created by BSA univ 2 on 25/03/14.
//  Copyright (c) 2014 BSA univ 2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlistManager.h"
#import "QuestionViewController.h"
#import"ViewViewController.h"

@class LevelViewController;
@class PlistManager;
@class ViewViewController;
@interface QuestionViewController : UIViewController

@property (nonatomic,strong) PlistManager *plistobj;
@property (nonatomic,strong)NSArray *buttonsArray;
@property (nonatomic,strong)NSArray *beginnerArray;
@property (nonatomic,strong) NSString *qn1;
@property (nonatomic,strong) NSString *qn2;
@property (nonatomic,strong) NSString *qn;
@property (nonatomic,strong) ViewViewController *plobj;

@property LevelViewController *levelObj;
@end
