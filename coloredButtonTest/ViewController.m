//
//  ViewController.m
//  coloredButtonTest
//
//  Created by William Anderson on 9/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>


@implementation ViewController
@synthesize redButton = _redButton;
@synthesize blueButton = _blueButton;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
/*    [[_redButton layer] setCornerRadius:8.0f];
    [[_redButton layer] setMasksToBounds:YES];
    [[_redButton layer] setBorderWidth:1.0f];
    
    
    //[[_redButton layer] setBackgroundColor:[[UIColor redColor] CGColor]];
    // UIView way
    [_redButton setBackgroundColor:[UIColor redColor]];*/
//    [_redButton setHighColor:[UIColor redColor]];
     [_redButton setColor:[UIColor redColor]];
    
    CALayer* colorLayer = [[CALayer alloc] init];
    // Set its bounds to be the same of its parent
    [colorLayer setBounds:[_blueButton bounds]];
    // Center the layer inside the parent layer
    [colorLayer setPosition:
     CGPointMake([_blueButton bounds].size.width/2,
                 [_blueButton bounds].size.height/2)];
    
    // Insert the layer at position zero to make sure the 
    // text of the button is not obscured
    [[_blueButton layer] insertSublayer:colorLayer atIndex:0];
    
    // Set the layer's corner radius
    [[_blueButton layer] setCornerRadius:8.0f];
    // Turn on masking
    [[_blueButton layer] setMasksToBounds:YES];
    // Display a border around the button 
    // with a 1.0 pixel width
    [[_blueButton layer] setBorderWidth:1.0f];
    [colorLayer setBackgroundColor:[[UIColor blueColor] CGColor]];

}

- (void)viewDidUnload
{
    [self setRedButton:nil];
    [self setBlueButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
