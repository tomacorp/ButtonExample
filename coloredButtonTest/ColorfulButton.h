//
//  ColorfulButton.h
//  coloredButtonTest
//
//  Created by William Anderson on 9/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ColorfulButton : UIButton {
    CALayer* colorLayer;
}

@property (assign) UIColor *_highColor;
@property (nonatomic, retain) CALayer *colorLayer;

- (void)setColor:(UIColor*)color;


@end
