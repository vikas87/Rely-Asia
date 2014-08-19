//
//  sendQuery.m
//  clotconclave
//
//  Created by INMUBPHG2103 on 07/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "sendQuery.h"

@interface sendQuery ()

@end

@implementation sendQuery
@synthesize subjectTxtFld;
@synthesize emailIdTxtFld;
@synthesize messageTxtFld;

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

- (IBAction)sendMail:(id)sender {
    
//    NSLog(@"%@ this is subject : ",subjectTxtFld.text);
//    NSLog(@"%@ This is a Email : ",emailIdTxtFld.text);
//    NSLog(@"%@ This is a Message",messageTxtFld.text);
    
    // Email Subject
    NSString *subject = subjectTxtFld.text;
    // Email Content
//    NSString *toRecipents = emailIdTxtFld.text;
    // To address
    NSString *messageBody = messageTxtFld.text;
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:subject];
    [mc setMessageBody:messageBody isHTML:NO];
//    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
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
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if([text isEqualToString:@"\n"])
        [textView resignFirstResponder];
    return YES;
}
@end
