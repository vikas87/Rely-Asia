//
//  firstPage.m
//  clotconclave
//
//  Created by INMUBPHG2103 on 07/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "firstPage.h"

@interface firstPage ()

@end

@implementation firstPage
@synthesize relyAsiaResultBtn;
@synthesize sendQueryBtn;
@synthesize sliderVideo;
@synthesize completeVideo;
@synthesize web;
@synthesize downloadBtn;
@synthesize indexBtn;

- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    
    web.scrollView.bounces=NO;
        
        NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia" ofType:@"html" inDirectory:@"Rely-Asia"];
        NSURL *url=[NSURL fileURLWithPath:path];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        [web loadRequest:request];
        
}

- (IBAction)relyAsiaResult:(id)sender {
    
    [self.web loadHTMLString:@"" baseURL:nil];
    
    firstPage *firstPageObj=[[firstPage alloc]init];
    [self.navigationController pushViewController:firstPageObj animated:NO];
 
}

- (IBAction)sendQuery:(id)sender {
    
//    sendQuery *sendQueryObj=[[sendQuery alloc]init];
//    [self.navigationController pushViewController:sendQueryObj animated:NO];
    // Email Subject
    NSString *emailTitle = @"Clot Conclave";
    // Email Content
//    NSString *messageBody = @"iOS programming is so fun!";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"medical.query.mum@boehringer-ingelheim.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
//    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];

}

- (IBAction)sliderVideo:(id)sender {
    
    SliderVideo *SliderVideoObj=[[SliderVideo alloc]init];
    [self.navigationController pushViewController:SliderVideoObj animated:NO];
}

- (IBAction)completeVideo:(id)sender {

    CompleteVideo *CompleteVideoObj=[[CompleteVideo alloc]init];
    [self.navigationController pushViewController:CompleteVideoObj animated:NO];
}

- (IBAction)HomeAction:(id)sender {
    
    [self.web loadHTMLString:@"" baseURL:nil];
    aboutclot *aboutclotObj=[[aboutclot alloc]init];
    [self.navigationController pushViewController:aboutclotObj animated:NO];
    
}

- (IBAction)downloadContentAction:(id)sender {
    
//    [self.web loadHTMLString:@"" baseURL:nil];
   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.clotconclave.in/livewebcast.php"]];
    
}

- (IBAction)indexPage:(id)sender {
    
    [self.web loadHTMLString:@"" baseURL:nil];
    ViewController *ViewControllerObj=[[ViewController alloc]init];
    [self.navigationController pushViewController:ViewControllerObj animated:NO];
    
}
- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
