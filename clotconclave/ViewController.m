//
//  ViewController.m
//  clotconclave
//
//  Created by INMUBPHG2103 on 07/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nextViewBtn;

- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
- (void)viewDidUnload {
    [super viewDidUnload];
}
- (void)viewWillAppear:(BOOL)animated {
    
    web.scrollView.bounces=NO;
    NSString *path=[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"Rely-Asia"];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    self.navigationController.navigationBar.hidden = YES;
    
}
- (IBAction)nextView:(id)sender {
    
    aboutclot *aboutclotObj=[[aboutclot alloc]init];
    [self.navigationController pushViewController:aboutclotObj animated:NO];

}
@end
