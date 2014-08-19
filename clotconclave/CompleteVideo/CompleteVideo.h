//
//  CompleteVideo.h
//  clotconclave
//
//  Created by INMUBPHG2103 on 08/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "firstPage.h"
#import <MessageUI/MessageUI.h>
#import "aboutclot.h"
#import "ViewController.h"
@interface CompleteVideo : UIViewController<MFMailComposeViewControllerDelegate>
{
    IBOutlet UIWebView *web;
    IBOutlet UIButton *relyAsiaResultBtn;
    IBOutlet UIButton *sendQueryBtn;
    IBOutlet UIButton *backBtn;
    IBOutlet UIButton *homeBtn;
    IBOutlet UIButton *downloadBtn;
    IBOutlet UIButton *indexBtn;
}
@property(nonatomic,retain)IBOutlet UIWebView *web;
@property(nonatomic,retain)IBOutlet UIButton *relyAsiaResultBtn;
@property(nonatomic,retain)IBOutlet UIButton *sendQueryBtn;
@property(nonatomic,retain)IBOutlet UIButton *backBtn;
@property(nonatomic,retain)IBOutlet UIButton *downloadBtn;
@property(nonatomic,retain)IBOutlet UIButton *indexBtn;

- (IBAction)homeAction:(id)sender;

- (IBAction)relyAsiaResult:(id)sender;
- (IBAction)sendQuery:(id)sender;
- (IBAction)backAction:(id)sender;
- (IBAction)downloadContentAction:(id)sender;
- (IBAction)indexPage:(id)sender;
@end
