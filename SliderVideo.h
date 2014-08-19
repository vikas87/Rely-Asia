//
//  SliderVideo.h
//  clotconclave
//
//  Created by INMUBPHG2103 on 08/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScrollView.h"
#import "firstPage.h"
#import "aboutclot.h"
#import "ViewController.h"
#import <MessageUI/MessageUI.h>
@interface SliderVideo : UIViewController<UIScrollViewDelegate,MFMailComposeViewControllerDelegate,UIWebViewDelegate>
{
    IBOutlet ScrollView *scrollView;
	IBOutlet UIImageView *imageView;
    IBOutlet UIWebView *web;
    IBOutlet UIButton *backBtn;
    
    IBOutlet UIButton *relyAsiaResultBtn;
    IBOutlet UIButton *sendQueryBtn;
    IBOutlet UIButton *sliderVideo;
    IBOutlet UIButton *completeVideo;
    IBOutlet UIButton *homeBtn;
    IBOutlet UIButton *downloadBtn;
    IBOutlet UIButton *indexBtn;
    
	NSMutableArray *images;
	NSArray *imagesName;
}
@property(nonatomic,retain)IBOutlet UIWebView *web;
@property(nonatomic,retain)IBOutlet UIButton *backBtn;
-(void)ShowDetailView:(UIImageView *)imgView;

@property(nonatomic,retain)IBOutlet UIButton *relyAsiaResultBtn;
@property(nonatomic,retain)IBOutlet UIButton *sendQueryBtn;
@property(nonatomic,retain)IBOutlet UIButton *sliderVideo;
@property(nonatomic,retain)IBOutlet UIButton *completeVideo;
@property(nonatomic,retain)IBOutlet UIButton *downloadBtn;
@property(nonatomic,retain)IBOutlet UIButton *indexBtn;

- (IBAction)relyAsiaResult:(id)sender;
- (IBAction)sendQuery:(id)sender;
- (IBAction)sliderVideo:(id)sender;
- (IBAction)completeVideo:(id)sender;
- (IBAction)backAction:(id)sender;
- (IBAction)homeAction:(id)sender;
- (IBAction)downloadContentAction:(id)sender;
- (IBAction)indexPage:(id)sender;

@end
