//
//  LevelViewController.m
//  CodeManiaCore
//
//  Created by BSA univ 2 on 25/03/14.
//  Copyright (c) 2014 BSA univ 2. All rights reserved.
//

#import "LevelViewController.h"
#import "Entity.h"
#import "AppDelegate.h"
@interface LevelViewController ()
{
    NSManagedObjectContext *context;
    Entity * entityobj;
}
@end

@implementation LevelViewController
@synthesize plistobj,buttonsArray,current,sendingdistancelevalview,complixity;



- (void)viewDidLoad

{
    
    
    
    plistobj = [[PlistManager alloc]init];
    _wobj = [[QuestionViewController alloc]init];
    
    
    buttonsArray = [plistobj AppPlist:sendingdistancelevalview];
    
        AppDelegate *appdelegate = [[UIApplication sharedApplication]delegate];
    context = [appdelegate managedObjectContext];

//    NSLog(@"%@  distanc=",sendingdistancelevalview);
//    NSLog(@"!!!buttonarray2 %@",buttonsArray);
    
    int x =0;
    int y=100;
    for (int i=0; i<buttonsArray.count; i++)
    {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        [button addTarget:self
                   action:@selector(aMethod:)
         forControlEvents:UIControlEventTouchDown];
        // [button setTitle:@"Show View" forState:UIControlStateNormal];
        [button setTitle:[buttonsArray objectAtIndex:i] forState:UIControlStateNormal];
        button.frame = CGRectMake(x, y, 160.0, 40.0);
        [self.view addSubview:button];
        y = y +100;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)aMethod:(UIButton*)button
{
    //    current = button.currentTitle;
    //    NSLog(@"%@",current);
    complixity= button.currentTitle;
    NSLog(@" Complex %@",complixity);
    
    
    NSLog(@"Button  clicked.");
    
    
    NSEntityDescription * entitydesc = [NSEntityDescription entityForName:@"Entity" inManagedObjectContext:context];
    
    NSManagedObject *newPerson = [[NSManagedObject alloc]initWithEntity:entitydesc insertIntoManagedObjectContext:context];
    
    [newPerson setValue:sendingdistancelevalview forKey:@"qn1"];
    [newPerson setValue:complixity forKey:@"qn2"];
    
    NSError *error;
    [context save:&error];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
 
    [fetchRequest setEntity:entitydesc];
    

   // passing the fetched data to an array
    
    
    NSArray * fetchrecord =[context executeFetchRequest:fetchRequest error:&error];
// NSLog(@"DD%@",fetchrecord);
    
    
//    //1
//    int chk=1;
//    for (int i=0; i< fetchrecord.count; i++)
//    {
//        entityobj = [fetchrecord objectAtIndex:i];
//        if ([entityobj.qn1 isEqualToString:sendingdistancelevalview] && [entityobj.qn2 isEqualToString:complixity]) {
//            chk=0;
//            NSLog(@"%i",chk);
//        }
//        
//    }

    _wobj = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"QuestionViewController"];
    
    [_wobj setQn1:sendingdistancelevalview];
    [_wobj setQn2:complixity];
    
    

    
    
    [self presentViewController:_wobj animated:NO completion:^void{}];
    //TODO 1: Get button text
    //TODO 2: load new view controller passing new object with value 5K
}

- (IBAction)backButon:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
}




@end
