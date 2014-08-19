//
//  CompleteVideo.m
//  clotconclave
//
//  Created by INMUBPHG2103 on 08/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "CompleteVideo.h"

@interface CompleteVideo ()

@end

@implementation CompleteVideo
@synthesize relyAsiaResultBtn;
@synthesize web;
@synthesize sendQueryBtn;
@synthesize backBtn;
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
-(void)viewWillAppear:(BOOL)animated{

        web.scrollView.bounces=NO;
        
        NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia-video" ofType:@"html" inDirectory:@"Rely-Asia"];
        NSURL *url=[NSURL fileURLWithPath:path];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        [web loadRequest:request];
        web.mediaPlaybackRequiresUserAction = NO;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)backAction:(id)sender {
    
     [self.web loadHTMLString:@"" baseURL:nil];
    
    firstPage *firstPageObj=[[firstPage alloc]init];
    [self.navigationController pushViewController:firstPageObj animated:NO];
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

- (IBAction)homeAction:(id)sender {
    
    [self.web loadHTMLString:@"" baseURL:nil];
    aboutclot *aboutclotObj=[[aboutclot alloc]init];
    [self.navigationController pushViewController:aboutclotObj animated:NO];
}

- (IBAction)relyAsiaResult:(id)sender {
    
    [self.web loadHTMLString:@"" baseURL:nil];
    
    firstPage *firstPageObj=[[firstPage alloc]init];
    [self.navigationController pushViewController:firstPageObj animated:NO];
    
}

@end
