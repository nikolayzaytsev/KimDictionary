//
//  KimDictionaryViewController.m
//  KimDictionary
//
//  Created by Николай Зайцев on 09.07.12.
//  Copyright (c) 2012 iFree Innovations. All rights reserved.
//

#import "KimDictionaryViewController.h"

@interface KimDictionaryViewController ()

@end

@implementation KimDictionaryViewController
@synthesize textField;
@synthesize label;
@synthesize userName = _userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    
    if([nameString length] == 0){
        nameString = @"World";
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField{
    
    if(theTextField == self.textField){
        [theTextField resignFirstResponder];
    }

    return YES;
}

@end
