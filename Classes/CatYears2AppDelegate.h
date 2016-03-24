//
//  CatYears2AppDelegate.h
//  CatYears2
//
//  Created by Eric Blanton on 12/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CatYears2ViewController;

@interface CatYears2AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CatYears2ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CatYears2ViewController *viewController;

@end

