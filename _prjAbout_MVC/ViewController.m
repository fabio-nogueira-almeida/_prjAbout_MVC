//
//  ViewController.m
//  _prjAbout_MVC
//
//  Created by Fábio Nogueira  on 07/10/12.
//  Copyright (c) 2012 Fábio Nogueira . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//criando set e get dos objetos
@synthesize textfield;
@synthesize label;
@synthesize username;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateGreeting:(id)sender {
    
    username = [NSString stringWithString:textfield.text];
    label.text = [NSString stringWithFormat:@"Olá, %@", username];
    
}

- (void)viewDidUnload
{
    // faz com que quando o a view for fechada, o resultado desses objetos voltem ao inicial
    [self setLabel:nil];
    [self setTextfield:nil];
    [self setUsername:nil];

}



// metodo para tirar o teclado quando aperta no done
// metodo tirado do delegate
- (BOOL) textFieldShouldReturn:(UITextField *) theTextField{
    if (theTextField == textfield) {
        [textfield resignFirstResponder];
        return YES;
    }
    return NO;
    
}

@end
