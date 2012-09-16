//
//  ColorfulButton.m
//  coloredButtonTest
//
//  Created by William Anderson on 9/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
// Adding a comment to test github integration


#import "ColorfulButton.h"
#import <QuartzCore/QuartzCore.h>


@implementation ColorfulButton

@synthesize _highColor;
@synthesize colorLayer;

- (void)awakeFromNib;
{
    // Initialize the gradient layer
    colorLayer = [[CALayer alloc] init];
    // Set its bounds to be the same of its parent
    [colorLayer setBounds:[self bounds]];
    // Center the layer inside the parent layer
    [colorLayer setPosition:
     CGPointMake([self bounds].size.width/2,
                 [self bounds].size.height/2)];
    
    // Insert the layer at position zero to make sure the 
    // text of the button is not obscured
    [[self layer] insertSublayer:colorLayer atIndex:0];
    
    // Set the layer's corner radius
    [[self layer] setCornerRadius:8.0f];
    // Turn on masking
    [[self layer] setMasksToBounds:YES];
    // Display a border around the button 
    // with a 1.0 pixel width
    [[self layer] setBorderWidth:1.0f];
    
}

- (void)drawRect:(CGRect)rect;
{
    if (_highColor)
    {
        // Set the colors for the gradient to the 
        // two colors specified for high and low
        [colorLayer setBackgroundColor:[_highColor CGColor]];
    }
    [super drawRect:rect];
}

- (void)setColor:(UIColor*)color;
{
    // Set the high color and repaint
    [self set_highColor:color];
    [[self layer] setNeedsDisplay];
}


@end
