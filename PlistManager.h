//
//  PlistManager.h
//  CodeManiaCore
//
//  Created by BSA univ 2 on 25/03/14.
//  Copyright (c) 2014 BSA univ 2. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "LevelViewController.h"

@class ViewController;

@interface PlistManager : NSObject
@property (nonatomic,strong) ViewController *obj;
@property (nonatomic,strong) LevelViewController *levelObj;
    @property (nonatomic,copy) NSDictionary *names;
@property(nonatomic, strong) NSString * plistPath;
@property (nonatomic,strong) NSArray *fullData;
-(NSArray *)ReadAppPlist;
-(NSArray *)AppPlist:(NSString *)category;
-(NSArray *)AppPlistWeek:(NSString *)category :(NSString *) weeks;
-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *) complixity :(NSString*) weeks;
-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *) complixity :(NSString*) weeks :(NSString *)question;


//-(void)AppPlist :(NSString *)str1;
@end
