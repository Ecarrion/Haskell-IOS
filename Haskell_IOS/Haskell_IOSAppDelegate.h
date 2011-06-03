//
//  Haskell_IOSAppDelegate.h
//  Haskell_IOS
//
//  Created by Ernesto Carrión on 6/3/11.
//  Copyright 2011 Kogi Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Haskell_IOSViewController;

@interface Haskell_IOSAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Haskell_IOSViewController *viewController;

@end
