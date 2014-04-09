//
//  PlistManager.m
//  CodeManiaCore
//
//  Created by BSA univ 2 on 25/03/14.
//  Copyright (c) 2014 BSA univ 2. All rights reserved.
//

#import "PlistManager.h"
#import"ViewController.h"
#import "LevelViewController.h"

@implementation PlistManager


@synthesize plistPath,fullData,names;

-(NSArray *)ReadAppPlist
{
    _obj = [[ViewController alloc]init];
    
    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    
    fullData = [propertyDict allKeys];
    
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES selector:@selector(localizedStandardCompare:)];
    
    fullData = [fullData sortedArrayUsingDescriptors:@[descriptor]];

    
    
  NSLog(@"Course%@",fullData);
    return fullData;
}

-(NSArray *)AppPlist:(NSString *)category
{
    _obj = [[ViewController alloc]init];
    
    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    NSDictionary *first = (NSDictionary *)[propertyDict objectForKey:category];
    
    NSArray *levels= [first allKeys];
    

    
    NSLog(@"Levels%@",levels);
    
   // NSLog(@"%@",fullData);
    
    return levels;
}

-(NSArray *)AppPlistWeek:(NSString *)category :(NSString *)weeks
{
    _levelObj = [[LevelViewController alloc]init];
    
    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    NSDictionary *first = (NSDictionary *)[propertyDict objectForKey:category];
    NSDictionary *second=[first objectForKey:weeks];
    
    
    NSArray *levels2=[second allKeys];
    
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES selector:@selector(localizedStandardCompare:)];
    
    levels2 = [levels2 sortedArrayUsingDescriptors:@[descriptor]];
    
    NSLog(@"Search%@",levels2);
    
    // NSLog(@"%@",fullData);
    return levels2;
}
-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *) complixity :(NSString *) weeks
{
    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
    
    NSLog(@"1%@ 2%@ 3%@",distance,complixity,weeks);
    
    NSDictionary *first=(NSDictionary *)[propertyDict objectForKey:distance];
    
    
    NSDictionary *second=[first objectForKey:complixity];

    NSArray *third=[second objectForKey:weeks];
    
//    NSString *fourth = [third objectEn


    NSLog(@"final%@",third);
//     NSArray *weekDetails=[third copy];
    
    NSString * fourth= [third objectAtIndex:2];

        return third;
    
    
}
//-(NSArray *)AppPlistWeekone:(NSString *)distance :(NSString *)complixity :(NSString *)weeks :(NSSt=ing *)question
//{
//    plistPath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
//    NSMutableDictionary * propertyDict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
//
//
//    NSLog(@"%@ %@ %@",distance,complixity,weeks);
//
//    NSDictionary *first=(NSDictionary *)[propertyDict objectForKey:distance];
//
//
//    NSDictionary *second=[first objectForKey:complixity];
//    NSArray *third=[second objectForKey:weeks];
//
//    NSArray *four=[third]
//    NSLog(@"final%@",third);
//    //  NSArray *weekDetails=[third copy];
//
//    return third;
//
//
//}


@end