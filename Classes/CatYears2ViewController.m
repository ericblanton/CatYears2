//
//  CatYears2ViewController.m
//  CatYears2
//
//  Created by Eric Blanton on 12/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CatYears2ViewController.h"

@implementation CatYears2ViewController

@synthesize bannerIsVisible;

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
	if (!self.bannerIsVisible)
	{
		[UIView beginAnimations:@"animateAdBannerOn" context:NULL];
		// banner is invisible now and moved out of the screen on 50 px
		banner.frame = CGRectOffset(banner.frame, 160, 0);
		[UIView commitAnimations];
		self.bannerIsVisible = YES;
	}
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
	if (self.bannerIsVisible)
	{
		[UIView beginAnimations:@"animateAdBannerOff" context:NULL];
		// banner is visible and we move it out of the screen, due to connection issue
		banner.frame = CGRectOffset(banner.frame, 160, 0);
		[UIView commitAnimations];
		self.bannerIsVisible = NO;
	}
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
	NSLog(@"Banner view is beginning an ad action");
	BOOL shouldExecuteAction = YES;
	if (!willLeave && shouldExecuteAction)
    {
		// stop all interactive processes in the app
		// [video pause];
		// [audio pause];
    }
	return shouldExecuteAction;
}
-(IBAction)openSafari {
	
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString:@"http://itunes.com/apps/sugarcodedapps"]];
}

- (void)bannerViewActionDidFinish:(ADBannerView *)banner
{
	// resume everything you've stopped
	// [video resume];
	// [audio resume];
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
	
	return 1;
	
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
	
	return [list count];
	
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	
	return [list objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	
	if (row == 0) {
	    textView.text = @"2";
	}
	if (row == 1) {
	    textView.text = @"5";
	}
	if (row == 2) {
	    textView.text = @"10";
	}
	if (row == 3) {
	    textView.text = @"12";
	}
	if (row == 4) {
	    textView.text = @"15";
	}
	if (row == 5) {
	    textView.text = @"24";
	}	
	if (row == 6) {
		textView.text = @"28";
	}	
	if (row == 7) {
		textView.text = @"32";
	}	
	if (row == 8) {
		textView.text = @"36";
	}	
	if (row == 9) {
		textView.text = @"40";
	}	
	if (row == 10) {
		textView.text = @"44";
	}	
	if (row == 11) {
		textView.text = @"48";
	}	
	if (row == 12) {
		textView.text = @"52";
	}	
	if (row == 13) {
		textView.text = @"56";
	}	
	if (row == 14) {
		textView.text = @"60";
	}	
	if (row == 15) {
		textView.text = @"64";
	}	
	if (row == 16) {
		textView.text = @"68";
	}	
	if (row == 17) {
		textView.text = @"72";
	}	
	if (row == 18) {
		textView.text = @"76";
	}	
	if (row == 19) {
		textView.text = @"80";
	}	
	if (row == 20) {
		textView.text = @"84";
		
	}	
	if (row == 21) {
		textView.text = @"88";
	}	
	if (row == 22) {
		textView.text = @"92";
	}	
	if (row == 23) {
		textView.text = @"96";
	}	
	if (row == 24) {
		textView.text = @"100!";
	}	
		
	
	
	
	NSLog(@"Selected item: %@. Index of selected item: %i", [list objectAtIndex:row], row);
}




/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	list = [[NSMutableArray alloc] init];
	[list addObject:@"1mo"];
	[list addObject:@"3mo"];
	[list addObject:@"6mo"];
	[list addObject:@"9mo"];
	[list addObject:@"1"];
	[list addObject:@"2"];
	[list addObject:@"3"];
	[list addObject:@"4"];
	[list addObject:@"5"];
	[list addObject:@"6"]; 
	[list addObject:@"7"];
	[list addObject:@"8"];
	[list addObject:@"9"];
	[list addObject:@"10"];
	[list addObject:@"11"];
	[list addObject:@"12"];
	[list addObject:@"13"];
	[list addObject:@"14"];
	[list addObject:@"15"];
	[list addObject:@"16"];
	[list addObject:@"17"];
	[list addObject:@"18"];
	[list addObject:@"19"];
	[list addObject:@"20"];
	[list addObject:@"21"];
		
	
}



/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

-(IBAction)toggleView:(id)sender {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight
						   forView:[self view]
							 cache:YES];
	[[self view] addSubview:secondaryView];
	[UIView commitAnimations];
}

- (IBAction)returnView:(id)sender {
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft
						   forView:[self view]
							 cache:YES];
	[secondaryView removeFromSuperview];
	[UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[list release];
    [super dealloc];
}

@end




