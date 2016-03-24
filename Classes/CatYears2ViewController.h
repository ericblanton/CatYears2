//
//  CatYears2ViewController.h
//  CatYears2
//
//  Created by Eric Blanton on 12/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface CatYears2ViewController : UIViewController <ADBannerViewDelegate, UIPickerViewDelegate> {
	
	ADBannerView *adView;
	BOOL bannerIsVisible;
	
	NSMutableArray *list;	
	
	IBOutlet UIPickerView *pickerView;
	
	
	IBOutlet UITextView *textView;
	
	IBOutlet UIView *secondaryView;
	
}

- (IBAction)openSafari;
- (IBAction)toggleView:(id)sender;
- (IBAction)returnView:(id)sender;

@property (nonatomic,assign) BOOL bannerIsVisible;

@end




