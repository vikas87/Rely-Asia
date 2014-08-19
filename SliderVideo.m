//
//  SliderVideo.m
//  clotconclave
//
//  Created by INMUBPHG2103 on 08/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "SliderVideo.h"

@interface SliderVideo ()

@end

@implementation SliderVideo
@synthesize relyAsiaResultBtn;
@synthesize sendQueryBtn;
@synthesize sliderVideo;
@synthesize completeVideo;
@synthesize web;
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
            
            imagesName = [[NSArray alloc]initWithObjects:@"rely-asia01-thumb.png",@"rely-asia02-thumb.png",@"rely-asia03-thumb.png",
                          @"rely-asia04-thumb.png",@"rely-asia05-thumb.png",@"rely-asia06-thumb.png",@"rely-asia07-thumb.png",@"rely-asia08-thumb.png",@"rely-asia09-thumb.png",@"rely-asia10-thumb.png",@"rely-asia11-thumb.png",@"rely-asia12-thumb.png",@"rely-asia13-thumb.png",nil];
            images = [[NSMutableArray alloc]init];
        
    }
    return self;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
-(void)viewWillAppear:(BOOL)animated{

    web.scrollView.bounces=NO;

    scrollView.delegate = self;
	scrollView.scrollEnabled = YES;
	int scrollWidth = 120;
	scrollView.contentSize = CGSizeMake(scrollWidth,80);
    scrollView.backgroundColor=[UIColor clearColor];
    scrollView.maximumZoomScale = 2.0;
    [scrollView setZoomScale:scrollView.minimumZoomScale];
	
	int xOffset = 0;
	imageView.image = [UIImage imageNamed:[imagesName objectAtIndex:0]];
	
	for(int index=0; index < [imagesName count]; index++)
	{
		
		UIImageView *img = [[UIImageView alloc] init];
		img.bounds = CGRectMake(0, 0, 0, 0);
		img.frame = CGRectMake(5+xOffset, 10, 131, 111);
		NSLog(@"image: %@",[imagesName objectAtIndex:index]);
		img.image = [UIImage imageNamed:[imagesName objectAtIndex:index]];
		[images insertObject:img atIndex:index];
		scrollView.contentSize = CGSizeMake(scrollWidth+xOffset,110);
		[scrollView addSubview:[images objectAtIndex:index]];
		
		xOffset += 135;
	}
    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia01" ofType:@"html" inDirectory:@"Rely-Asia"];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    
    web.mediaPlaybackRequiresUserAction = NO;
 
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch * touch = [[event allTouches] anyObject];
	
	for(int index=0;index<[images count];index++)
	{
		UIImageView *imgView = [images objectAtIndex:index];
		
		if(CGRectContainsPoint([imgView frame], [touch locationInView:scrollView]))
		{
                if(index == 0){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia01" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 1){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia02" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 2){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia03" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 3){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia04" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 4){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia05" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 5){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia06" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 6){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia07" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 7){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia08" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 8){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia09" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 9){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia10" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 10){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia11" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                }else if (index == 11){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia12" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }else if (index == 12){
                    
                    NSString *path=[[NSBundle mainBundle] pathForResource:@"rely-asia13" ofType:@"html" inDirectory:@"Rely-Asia"];
                    NSURL *url=[NSURL fileURLWithPath:path];
                    NSURLRequest *request=[NSURLRequest requestWithURL:url];
                    [web loadRequest:request];
                    
                }
                    break;
		}
	}
}

-(void)ShowDetailView:(UIImageView *)imgView
{
    NSLog(@"i am here");
//	imageView.image = imgView.image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendQuery:(id)sender {
    
    NSString *emailTitle = @"Clot Conclave";
    
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
    
    SliderVideo *SliderVideoObj=[[SliderVideo alloc]init];
    [self.navigationController pushViewController:SliderVideoObj animated:NO];
}

- (IBAction)backAction:(id)sender {
    
    [self.web loadHTMLString:@"" baseURL:nil];
    
    firstPage *firstPageObj=[[firstPage alloc]init];
    [self.navigationController pushViewController:firstPageObj animated:NO];
    
}

- (IBAction)homeAction:(id)sender {
    
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

- (IBAction)relyAsiaResult:(id)sender {
    
    [self.web loadHTMLString:@"" baseURL:nil];
    firstPage *firstPageObj=[[firstPage alloc]init];
    [self.navigationController pushViewController:firstPageObj animated:NO];
}
@end
