//
//  ViewViewController.m
//  CodeManiaCore
//
//  Created by BSA univ 2 on 25/03/14.
//  Copyright (c) 2014 BSA univ 2. All rights reserved.
//

#import "ViewViewController.h"
#import "M13Checkbox.h"

@interface ViewViewController ()<UITableViewDataSource,UITableViewDelegate>

{
    BOOL check;
    M13Checkbox *customFrame1 ;
}
@property (nonatomic,strong) NSString * answer;
@property (nonatomic,strong)NSNumber *ans1;

@end

@implementation ViewViewController

@synthesize qn,complixity,caste,buttonsArray,rootOfPlist,celltext,itsToDoChecked,current,answer,sobj;


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
    
    _plistobj = [[PlistManager alloc]init];
    
    NSLog(@"question %@",qn);
    NSLog(@"complixity %@",complixity);
    NSLog(@"level %@",caste);
    buttonsArray=[[NSMutableArray alloc]init];
    
    buttonsArray =[_plistobj AppPlistWeekone:qn:complixity:caste];
    check=NO;
    NSLog(@"%@",[buttonsArray description]);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [buttonsArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    static NSString *simpleTableIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
         cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = [buttonsArray objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:14.0];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    M13Checkbox *allDefaults = [[M13Checkbox alloc] init];
    M13Checkbox *customFrame1 = [[M13Checkbox alloc] initWithFrame:CGRectMake(260,10,30,30)];
    [cell addSubview:customFrame1];
    [customFrame1 addTarget:self action:@selector(Comparethevalues:) forControlEvents:UIControlEventValueChanged];
    if(indexPath.row==0)
    {
        [customFrame1 setHidden:YES];
    }
    

    return cell;
}
-(void) checkButton

{
    M13Checkbox *allDefaults = [[M13Checkbox alloc] init];
    M13Checkbox *customFrame1 = [[M13Checkbox alloc] initWithFrame:CGRectMake(260,80,30,30)];
    [self.view addSubview:customFrame1];
    
    
}
-(void)Comparethevalues:(id)sender
{
    NSIndexPath *indexPath = [self.tableview indexPathForCell:(UITableViewCell *)[[sender superview] superview]];
    
    
    
    //_ans1=[NSNumber numberWithLong:indexPath.row];
    answer=[NSString stringWithFormat:@"%ld",(long)indexPath.row];
    NSLog(@"xxxxxx %d",indexPath.row);
    if(indexPath.row==2)
    {
        NSLog(@"Correct ans",indexPath.row);
        
    }
    else
    {
        NSLog(@"WRONG ans",indexPath.row);
    }
    
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath

{
  
////    //
//    //
//  //    [sobj setQn:qn];
//  //    [sobj setComplixity:qn];
//  //    [sobj setCaste:qn];
//    //
//    //
//    //
//    
////    [self presentViewController:sobj animated:NO completion:^void{}];
    //1
    //    ViewViewController* detailController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewViewController"];
    //    //3
    //    detailController=[buttonsArray objectAtIndex:indexPath.row];
    //    //2
    //    NSLog(@"ee%@",[buttonsArray objectAtIndex:indexPath.row]) ;
    //
    
    //[self presentViewController:detailController animated:YES completion:nil];
    // qn = button.currentTitle;
    //    NSLog(@"refsads%@",qn);
    //
    //    NSLog(@"Button  clicked.");
    //    _plobj = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"ViewViewController"];
    //
    //
    //    [_plobj setQn:_qn1];
    //    [_plobj setComplixity:_qn2];
    //    [_plobj setCaste:qn];
    //
    
 
}
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    //[tableView reloadData];
    
    
    //- (void) checkButtonTapped: (UIControl *) button withevent: (UIEvent *) event
    //{
    
    
    BOOL checked = [[buttonsArray objectAtIndex:indexPath.row] boolValue];
    [buttonsArray removeObjectAtIndex:indexPath.row];
    [buttonsArray insertObject:(checked) ? @"False":@"True" atIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    UIButton *button = (UIButton *)cell.accessoryView;
    
    
    UIImage *newImage = (checked) ? [UIImage imageNamed:@"check.jpg"] : [UIImage imageNamed:@"checkmark.jpg"];
    [button setBackgroundImage:newImage forState:UIControlStateNormal];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Save"
                                                                   style:UIBarButtonItemStylePlain target:self action:@selector(saveChecklist)];
    self.navigationItem.rightBarButtonItem = backButton;
    // [backButton release];
    
}
-(void)saveChecklist
{
    
}
- (IBAction)Search:(id)sender {
    
//    qn=[buttonsArray objectAtIndex:indexPath.row];
    
    sobj= [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"cell"];
    
    [self presentViewController:sobj animated:NO completion:^void{}];

    
}



- (IBAction)backButon:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
