//
//  ViewController.h
//  clotconclave
//
//  Created by INMUBPHG2103 on 07/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "firstPage.h"
#import "aboutclot.h"
@interface ViewController : UIViewController
{
    IBOutlet UIWebView *web;
    IBOutlet UIButton *nextViewBtn;
}
- (IBAction)nextView:(id)sender;
@property(nonatomic,retain)IBOutlet UIButton *nextViewBtn;
@end
