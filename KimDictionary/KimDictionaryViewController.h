//
//  KimDictionaryViewController.h
//  KimDictionary
//
//  Created by Николай Зайцев on 09.07.12.
//  Copyright (c) 2012 iFree Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KimDictionaryViewController : UIViewController <UITextFieldDelegate>

    @property (weak, nonatomic) IBOutlet UITextField *textField;
    @property (weak, nonatomic) IBOutlet UILabel *label;
    @property (copy, nonatomic) NSString *userName;

    - (IBAction)changeGreeting:(id)sender;

@end
