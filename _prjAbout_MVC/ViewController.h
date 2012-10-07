//
//  ViewController.h
//  _prjAbout_MVC
//
//  Created by Fábio Nogueira  on 07/10/12.
//  Copyright (c) 2012 Fábio Nogueira . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{

    UITextField *textfield;
    
    UILabel *label;
    
    NSString *username;
    
    
}


// criando set e get dos objetos
@property (nonatomic, retain) IBOutlet UITextField *textfield;

@property (nonatomic, retain) IBOutlet UILabel *label;

@property (nonatomic, retain) NSString * username;

- (IBAction)updateGreeting:(id)sender;

@end
