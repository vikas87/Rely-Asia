//
//  sendQuery.h
//  clotconclave
//
//  Created by INMUBPHG2103 on 07/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@interface sendQuery : UIViewController<UITextViewDelegate,UITextFieldDelegate,MFMailComposeViewControllerDelegate>
{
    IBOutlet UITextField *subjectTxtFld;
    IBOutlet UITextField *emailIdTxtFld;
    IBOutlet UITextView *messageTxtFld;
    IBOutlet UIButton *sendBtn;
    
}
@property(nonatomic,retain)IBOutlet UITextField *subjectTxtFld;
@property(nonatomic,retain)IBOutlet UITextField *emailIdTxtFld;
@property(nonatomic,retain)IBOutlet UITextView *messageTxtFld;
- (IBAction)sendMail:(id)sender;
@end
