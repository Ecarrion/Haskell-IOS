//
//  Haskell_IOSViewController.m
//  Haskell_IOS
//
//  Created by Ernesto Carrión on 6/3/11.
//  Copyright 2011 Kogi Mobile. All rights reserved.
//

#import "Haskell_IOSViewController.h"

@implementation Haskell_IOSViewController

@synthesize input_, output_;

- (void)dealloc
{
    self.input_ = nil;
    self.output_ = nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    //[self.input_ set]
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    self.input_ = nil;
    self.output_ = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}


#pragma mark - IBACTIONS


- (IBAction)fibPressed {
    
    int i = [self.input_.text intValue];
    int o = fibonacci(i);
    self.output_.text = [NSString stringWithFormat:@"%d", o];
    
}

- (IBAction)facPressed {
    
	int i = [self.input_.text intValue];
    int o = fac(i);
    self.output_.text = [NSString stringWithFormat:@"%d", o];
    
}

- (IBAction) backTap {
    
    [self.input_ resignFirstResponder];
}

@end
