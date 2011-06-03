//
//  Haskell_IOSViewController.h
//  Haskell_IOS
//
//  Created by Ernesto Carrión on 6/3/11.
//  Copyright 2011 Kogi Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Haskell_IOSViewController : UIViewController {
 
    
    IBOutlet UITextField * input_;
    IBOutlet UITextField * output_;
    
}

@property (nonatomic, retain) UITextField * input_, * output_;

- (IBAction) facPressed;
- (IBAction) fibPressed;
- (IBAction) backTap;

extern int fibonacci(int a1);
extern int fac(int n);

@end
